class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  def current_user 
  	@current_user ||= User.find(session[:user_id]) if session[:user_id] 
  end  	
  def logged_in? 
  	!!current_user 
  end  	
  def authenticate 
  	unless logged_in? 
      flash[:error] = "LOG IN" 
  		redirect_to login_url 
    end 
  end
end
