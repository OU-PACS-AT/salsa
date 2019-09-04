class CanvasController < ApplicationController
  before_filter :init_view_folder, :only => [:list_courses]

  def list_courses
    select_course_dialog 'list_courses'
  end

  def relink_courses
    select_course_dialog 'relink_courses'
  end

  def select_course_dialog partial
    @document = Document.find_by_edit_id(params[:id])
      
    # PP > Pre-production sub-accounts
    #@pre_prod = [75, 76, 80, 81, 413, 77, 82, 83, 84, 312]
    # Switched to using highest level subaccount after implemented
    #   multiple page api fetch. (Limit is 100 records per page)
    @pre_prod = [74]

    # DEV > Dev sub-accounts
    @dev = [53]

    
    # Will Poillion 8-17-2017
    #   Added production sub-accounts to make direct modifications to live courses for minor textbook corrections, etc.
    # Production sub-accounts
    #@prod = [249, 250, 257, 258, 260, 262, 263, 265, 267, 269, 271]
    
    # Combine pre_prod + prod sub accounts for full course list
    #@accounts = @pre_prod + @prod    
    @accounts = @pre_prod + @dev
    
    @courses = []

    # Leaving here as example logger so don't have to remember later.
    #logger.error "TEST LOGGER"

    begin
      @accounts.each do |account|
        page = 0
        loop do
          page = page + 1
          @temp_courses = fetch_course_list_admin(account, page)
          @courses.concat(@temp_courses)
        break if @temp_courses.length <= 1
        end
 
      end
    rescue
      @courses.concat(fetch_course_list_teacher)  
    end
    
    @courses = @courses.sort_by{ |hsh| hsh["name"] }
      
    # gather the course IDs from canvas result
    lms_course_ids = @courses.map{|c| c['id'].to_s }

    # find all organizations in this branch of the org tree
    #org_tree = @document.organization.root.self_and_descendants.pluck :id
    org_tree = 1
      
    # find all documents in org tree that match on the @courses.id
    linked_courses_salsa = Document.where organization_id: org_tree, lms_course_id: lms_course_ids

    if linked_courses_salsa.size
      @linked_courses = @courses.select { |c| linked_courses_salsa.find_by(lms_course_id: c['id'].to_s) != nil }
      @unlinked_courses = @courses.select { |c| linked_courses_salsa.find_by(lms_course_id: c['id'].to_s) == nil }

      courses = Hash[@courses.map { |c| [c['id'], c] }]

      render json: {
        'html' => render_to_string(
          partial: partial,
          locals: {
            courses: courses,
            linked_courses: @linked_courses,
            unlinked_courses: @unlinked_courses,
            document: @document
          }
        )
      }
    end
  end

  protected

  def fetch_course_list_admin(account,page)
    if canvas_client
      puts "/api/v1/accounts/#{account}/courses?per_page=999"
      canvas_client.get("/api/v1/accounts/#{account}/courses?per_page=999&page=" + page.to_s, { include: 'syllabus_body' })
    end
  end

  def fetch_course_list_teacher
    if canvas_client
      canvas_client.get("/api/v1/courses?per_page=50", { include: 'syllabus_body' })        
    end
  end

  
  def canvas_access_token
    session[:canvas_access_token]["access_token"]
  end

  def oauth_endpoint
    session[:oauth_endpoint]
  end

  def canvas_client
    if(session[:oauth_endpoint] && session[:oauth_endpoint] != '')
      lms_client = Canvas::API.new(:host => session[:oauth_endpoint], :token => canvas_access_token)
    end
  end

end
