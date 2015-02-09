module SessionsHelper
  
  def log_in(user)
    session[:user_id] = user.id
  end
  
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def is_logged_in?
    !current_user.nil?
  end
  
  def check_user
    unless is_logged_in?
      flash[:danger] = "Do log in!"
      redirect_to root_path
     end
  end
  
end
