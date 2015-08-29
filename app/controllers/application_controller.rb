class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :logged_in?, :current_user

  def logged_in?
    session[:user_id] ? true : false
  end

  def log_out
    session[:user_id]  = nil
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    access_denied unless logged_in?
  end

  def access_denied
    redirect_to register_path
  end

end
