class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request

    
    if @contact.deliver
      flash.now[:notice] = 'Gracias por su mensaje!'
    else
      flash.now[:error] = 'El mensaje no ha sido enviado.'
      render :new
    end
  end
end