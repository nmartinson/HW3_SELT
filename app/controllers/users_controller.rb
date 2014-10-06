class UsersController < ApplicationController
  def new
    # default: render 'new' template
  end

  def create
    if( User.where("user_id = ?", params[:user][:user_id]).first ==  nil )
       @user = User.create_user!(params[:user])
       flash[:notice] = "Welcome #{@user.user_id}. Your account has been created."
       redirect_to movies_path
    else
       flash[:notice] = "Sorry, this user id is taken, try again"
       redirect_to new_user_path 
    end
  end

end
