class SessionsController < ApplicationController

  def new

  end 

def create  

  user = User.where(username: params[:username]).first
 
    if user && user.authenticate(params[:password])
      
      session[:user_id] = user.id
      flash[:notice] = "Welcome to Maximize MD, you are logged in"
      redirect_to root_path 
    else
      flash[:error] = "Your username or password is invalid"
      redirect_to login_path 
  end 
end 

def destroy
  session[:user_id] = nil
  flash[:notice] = "You have logged out"
  redirect_to login_path
end 


end