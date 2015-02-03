class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render action: new
  end
    
  private

  def user_params
    params.require(:user).permit(:username, :email, :userpassword)
  end
    
end
