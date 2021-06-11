class AdminController < ApplicationController
  def index
  end

  def login
  	
  end

  def login_attempt
    #function to check login details validility
    if params[:username].present? && params[:password].present?
      found_user = Staff.where(:username => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end
    if authorized_user
      flash[:notice] = "You are now logged in."
      session[:user_id] = found_user.id
      redirect_to(:action => 'index')
  else
    flash[:notice] = "Invalid email/password combination."
      redirect_to(:action => 'login')
  end
  end

  def logout
    #log out
    session[:user_id] = nil
    redirect_to(:action => 'login')
  end
end
