class SessionsController < ApplicationController
  
  def create
    user = User.find_by_email( params[:email] )
    
    if user && user.authenticate( params[:password] )
      session[:userid] = user.id
      redirect_to apikey_path
    else
      flash[:notice] = "Login failed!";
      redirect_to root_path 
    end
  end
  
  def logout
    session[:userid] = nil
    redirect_to root_path, notice: "Logged out"
  end
end
 