class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :set_current_user
  
  protect_from_forgery with: :exception
  
  protected
  
  def set_current_user
    @current_user ||= PrivMemer.find_by(id: session[:user_id])
    redirect_to priv_memers_path and return unless @current_user
  end
end
