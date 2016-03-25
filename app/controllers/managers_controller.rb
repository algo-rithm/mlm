class ManagersController < ApplicationController
  before_filter :signed_in_manager, only: [:index, :edit, :update]
  before_filter :correct_manager, only: [:edit, :update]
  
  def new
    @manager = Manager.new
  end

  def edit
    @manager = Manager.find(params[:id])
  end

  def update
    @manager = Manager.find(params[:id])
    if @manager.update_attributes(params[:manager])
      flash[:success] = "Profile Updated"
      sign_in @manager
      redirect_to @manager
    else
      render 'edit'
    end 
  end
  
  def index
    @managers = Manager.all
  end
  
  def show
    @manager = Manager.find(params[:id])
  end
  
  def create
    @manager = Manager.new(params[:manager])
    if @manager.save
      sign_in @manager
      flash[:success] = "Welcome New Manager!!!"
      redirect_to @manager
    else
      render 'new'
    end
  end
  
  private
  
  def correct_manager
    @manager = Manager.find(params[:id])
    redirect_to(root_path) unless current_manager?(@manager)
  end
  
end
