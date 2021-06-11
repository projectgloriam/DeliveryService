class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authcheck
  	if session[:user_id] == nil then
  		redirect_to :action => :login
  	end
  end

  def driverauthcheck
  	if session[:driver_id] == nil then
  		redirect_to :action => :login
  	end
  end
end
