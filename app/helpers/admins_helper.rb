module AdminsHelper
  
  def admin_log_in(admin)
    session[:admin_id] = admin.id
  end
  
  def admin_log_out
    session.delete(:admin_id)
    @current_admin = nil
  end
  
  def current_admin
    @current_admin ||= Admin.find_by(id: session[:admin_id])
  end
  
  def is_admin_logged_in?
    !current_admin.nil?
  end
  
  def check_admin
    unless is_admin_logged_in?
      flash[:danger] = "Do log in!"
      redirect_to root_path
     end
  end
end
