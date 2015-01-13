class UsersController < ApplicationController

  def edit
  end 

  def show
  end 


#currently not in use
  def require_same_user
    if current_user != @user
      flash[:error] = "You do not have permisions to edit a user other than yourself"
      redirect_to root_path
    end 
  end 
end 