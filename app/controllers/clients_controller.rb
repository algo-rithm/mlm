class ClientsController < ApplicationController
  before_filter :signed_in_manager, only: [:new, :index, :edit, :update]
  
  
  def new
    @client = Client.new
  end
  
  def edit
    @client = Client.find(params[:id])
  end
  
  def update
    @client = Client.find(params[:id])
    @manager = current_manager
    if @client.update_attributes(params[:client])
      flash[:success] = "Client Updated"
      redirect_to @manager
    else
      render 'edit'
    end 
  end

  def index
    @clients = Client.all
  end
  
  def show
    @client = Client.find(params[:id])
  end
  
  def create
    @client = Client.new(params[:client])
    @manager = current_manager
    if @client.save
      flash[:success] = "Client Saved!!!"
      redirect_to clients_path
    else
      render 'new'
    end
  end
  
  def destroy
    @client = Client.find(params[:id])
    @client.destroy
  end
  
  
end
