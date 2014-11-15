class AuthenticateController < ApplicationController
  
  layout 'admin'
  	before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]
  
    def login
    	#login form
    end

    def attempt_login
    	if params[:username].present? && params[:password].present?
        found_user = Admin.where(:username => params[:username]).first
        if found_user
          authorized_user = found_user.authenticate(params[:password])
        end
      end
      if authorized_user
        # TODO: mark user as logged in
        session[:user_id] = authorized_user.id
        session[:username] = authorized_user.username
        flash[:notice] = "You are now logged in as: '#{found_user.username}'"
        redirect_to(:action => 'index')
      else
        flash[:notice] = "Invalid username/password"
        redirect_to(:action => 'login')
      end
    	
    end

    def logout
    	# TODO: mark user as logged out
    	session[:user_id] = nil
      session[:username] = nil
      flash[:notice] = "Logged out"
      redirect_to(:action => "login")
    	
    end
  	
 end

