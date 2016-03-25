class FabricsController < ApplicationController

  def new
    @fabric = Fabric.new
  end
  
  def index
    @fabrics = Fabric.all
  end
  
  def create
    @fabric = Fabric.new(params[:fabric])
    if @fabric.save
      flash[:success] = "Fabric Saved!!!"
      redirect_to fabrics_path
    else
      render 'new'
    end
  end
  
  def edit
    @fabric = Fabric.find(params[:id])
  end

  def update
    @fabric = Fabric.find(params[:id])
    if @fabric.update_attributes(params[:fabric])
      flash[:success] = "Fabric Updated!!!"
      redirect_to fabrics_path
    else
      render 'edit'
    end
  end
  
  def show
    @fabric = Fabric.find(params[:id])
  end
end
