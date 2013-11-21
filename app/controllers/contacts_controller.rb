class ContactsController < ApplicationController
  def index
    @contact = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new contact_params
    if @contact.save
      redirect_to contacts_url
    else
      render 'new'
    end
  end

  def contact_params
    params.require(:contact).permit(:name, :company, :email, :phone)
  end
end
