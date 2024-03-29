class SessionsController < ApplicationController

  def new
  end

  def destroy
    session[:session_token] = nil
    redirect_to movies_path
  end
 
  def create
    if( User.where("user_id = ?", params[:user][:user_id]).first != nil )
      user = User.find_by_user_id(params[:user][:user_id])
      if( user.user_id == params[:user][:user_id] )
        if( user.email == params[:user][:email] )
          session[:session_token] = user.session_token
          redirect_to movies_path
          return
        end
      else
        flash[:warning] = "Login failed"
      end
    end
    flash[:warning] = "Login failed"
    redirect_to login_path
  end
  
end
