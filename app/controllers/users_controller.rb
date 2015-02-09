class UsersController < ApplicationController
  before_action :check_user, only: [:show]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      log_in @user
      redirect_to apikey_path
    else
      render 'new'
    end
  end
    
  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
    
end
