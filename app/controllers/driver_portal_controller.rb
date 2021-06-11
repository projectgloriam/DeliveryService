class DriverPortalController < ApplicationController
  def index
  end
  
  def login
  	
  end

  def login_attempt
    #function to check login details validility
    if params[:username].present? && params[:password].present?
      found_user = Driver.where(:username => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end
    if authorized_user
      flash[:notice] = "You are now logged in."
      session[:driver_id] = found_user.id
      redirect_to(:action => 'index')
  else
    flash[:notice] = "Invalid username/password combination."
      redirect_to(:action => 'login')
  end
  end

  def logout
    #log out
    session[:driver_id] = nil
    redirect_to(:action => 'login')
  end
end
