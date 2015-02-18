class AdminsController < ApplicationController
  before_action :check_admin, only: [:show]


 
  def new
  end
  
  def create
    admin = Admin.find_by(username: params[:session][:username])
    
    if admin && admin.authenticate(params[:session][:password])
      admin_log_in admin
      redirect_to admin_show_path
    else
      flash.now[:danger] = "Invalid email/password combination"
      render 'new'
    end
  end
  
  def destroy
    admin_log_out
    flash[:info] = "Thanks for the visit, welcome back!"
    redirect_to admin_login_path
  end
  
  def show
    @users = User.all
  end
end
