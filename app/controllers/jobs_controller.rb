class JobsController < ApplicationController
  
  def new
    @job = Job.new
    @project_list = get_project_list
    @fabric_list = get_fabric_list
  end
  
  def index
    @jobs = Job.all
  end
  
  def create
    @job = Job.new(params[:job])
    if @job.save
      flash[:success] = "Project Saved!!!"
      redirect_to jobs_path
    else
      @project_list = get_project_list
      @fabric_list = get_fabric_list
      render 'new'
    end
  end
  
  private
  
  def get_project_list
    return Project.find(:all).collect {|project| [project.name, project.id]}
  end
  
  def get_fabric_list
    return Fabric.find(:all).collect {|fabric| [fabric.name, fabric.id]}
  end
  
end
