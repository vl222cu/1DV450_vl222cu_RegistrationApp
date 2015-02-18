class UsersController < ApplicationController
  before_action :check_user, only: [:delete]
  before_action :check_admin, only: [:delete]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    user_apikey = ApiKey.new
    @user.api_key = user_apikey
    
    if @user.save
      log_in @user
      redirect_to apikey_path
    else
      render 'new'
    end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    if is_admin_logged_in?
      flash[:success] = "Successfully deleted the user's account and API-key."
      redirect_to admin_login_path
    else
      flash[:warning] = "Your account and API-key has been deleted."
      redirect_to root_path
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
    
end
