class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    manager = Manager.find_by_email(params[:session][:email])
    if manager && manager.authenticate(params[:session][:password])
      sign_in manager
      redirect_back_or manager
    else
      flash.now[:error] = "Invalid email/password combination"
      render 'new'
    end
        
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
  
end
