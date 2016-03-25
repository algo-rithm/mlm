class ProjectsController < ApplicationController
  before_filter :signed_in_manager
  
  def new
    @project = Project.new
    @client_list = get_client_list
  end
  
  def index
    @projects = Project.all
  end
  
  def show
    @project = Project.find(params[:id])
  end
  
  def create
    @project = Project.new(params[:project]) 
    if @project.save
      flash[:success] = "Project Saved!!!"
      redirect_to @project
    else
      @client_list = get_client_list
      render 'new'
    end
  end
  
  private
  
  def get_client_list
    return Client.find(:all).collect {|client| [client.name, client.id]}
  end
  
  def get_client_name(project)
    @client = Client.find(project.class_id)
    return @client.name
  end
  
end
