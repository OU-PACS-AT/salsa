class Oauth2Controller < ApplicationController
  def login
    session[:canvas_access_token] = ''
    session[:authenticated_institution] = ''

    lms_connection_information

    session[:institution] = @institution
    session[:oauth_endpoint] = @oauth_endpoint

    puts @redirect_url
    return redirect_to(@redirect_url) if @redirect_url
    return redirect_to(:back)
  end

  def logout
    session[:institution] = ''
    session[:oauth_endpoint] = ''
    session[:canvas_access_token] = ''
    session[:authenticated_institution] = ''

    flash[:notice] = "You are disconnected from Canvas."
    return redirect_to(@redirect_url) if @redirect_url
    redirect_to("/")
  end

  def callback
    lms_connection_information

    code = params[:code]

    if code
      token = @lms_client.retrieve_access_token(code, @redirect_url)
      session[:canvas_access_token] = token

      flash[:notice] = 'You are connected to Canvas. Please Select a Course.'
      session[:authenticated_institution] = session[:institution]
      session[:lms_authenticated_user] = session[:canvas_access_token]['user']
    else
      flash[:error] = params[:error]
    end

    if params[:lms_course_id]
      if params[:document_token]
        redirect_to lms_course_document_path(params[:lms_course_id], document_token: params[:document_token])
      else
        redirect_to lms_course_document_path(params[:lms_course_id])
      end
    elsif params[:document_id] != ''
      redirect_to document_path(params[:document_id]) + '#/select/course'
    else
      redirect_to admin_canvas_path
    end
  end
end
