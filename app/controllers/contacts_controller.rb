class ContactsController < ApplicationController
  before_filter :signed_in_manager, only: [:index, :edit, :update, :show]
  
  def new
    @contact = Contact.new
  end

  def show
    @contact = Contact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact }
    end
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      flash[:success] = "Thank you, I will be in contact shortly!"
      redirect_to success_path
    else
      render 'new'
    end
  end

  def success
  end
  
  def index
    @contacts = Contact.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contacts }
    end
  end

  
  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to contacts_url }
      format.json { head :no_content }
    end
  end
  

end
