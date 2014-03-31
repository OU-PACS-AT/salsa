class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def init_view_folder
    # establish the default view folder
    @view_folder = "instances/default"

    # find the matching organizaiton based on the request and being a top-level organization
    @organization = Organization.find_by slug: request.env['SERVER_NAME'], parent_id: nil

    # if a matching org was found, check if there is a custom view folder set up for it
    if @organization
      # only update the view folder if the institution folder exists
      if File.directory?("app/views/instances/custom/#{@organization.slug}")
        @view_folder = "instances/custom/#{@organization.slug}"
      end
    end
  end

  def lms_connection_information
    if session[:institution] && session[:institution] != ''
      @institution = session['institution']
    elsif !params[:institution] || params[:institution] == ''
      @institution = request.env['SERVER_NAME']
    else
      @institution = params[:institution]
    end

    @organization = Organization.find_by slug: @institution

    # custom authentication source, use the keys from the DB
    if @organization && @organization.lms_authentication_source
      @oauth_endpoint = @organization.lms_authentication_source
      @lms_client_id = @organization.lms_authentication_id
      @lms_secret = @organization.lms_authentication_key
      @callback_url = 'http://' + @organization[:slug] + '/oauth2/callback'
    end

    # defaults
    @oauth_endpoint ||= "https://#{@institution}.instructure.com"
    @lms_client_id ||= APP_CONFIG['canvas_id']
    @lms_secret ||= APP_CONFIG['canvas_key']
    @callback_url ||= APP_CONFIG['domain'] + '/oauth2/callback'

    @lms_client = Canvas::API.new(:host => @oauth_endpoint, :client_id => @lms_client_id, :secret => @lms_secret)
    @redirect_url = "#{@lms_client.oauth_url(@callback_url)}%3Fsyllabus_id%3D#{params[:syllabus_id]}"
  end
end
