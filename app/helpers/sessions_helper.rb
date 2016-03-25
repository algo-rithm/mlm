module SessionsHelper
  
  def sign_in(manager)
    cookies.permanent[:remember_token] = manager.remember_token
    self.current_manager = manager
  end
  
  def signed_in?
    !current_manager.nil?
  end
  
  def current_manager=(manager)
    @current_manager = manager
  end
  
  def current_manager
    @current_manager = Manager.find_by_remember_token(cookies[:remember_token])
  end
  
  def current_manager?(manager)
    manager == current_manager
  end
  
  def sign_out
    self.current_manager = nil
    cookies.delete(:remember_token)
  end
  
  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end
  
  def store_location
    session[:return_to] = request.fullpath
  end
  
  def signed_in_manager
    unless signed_in?
      store_location
      redirect_to signin_path, notice: "Please sign in" 
    end
  end
end
