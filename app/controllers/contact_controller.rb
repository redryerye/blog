class ContactController < ApplicationController
  def index
    @contact = Contact.new
    render :action => 'index'
  end

  def confirm
    @contact = Contact.new(params[:contact])

    if @contact.valid?
      render :action => 'confirm'
    else
      render :action => 'index'
    end

  end

  def complete
    @contact = Contact.new(params[:contact])
    ContactMailer.recieved_mail(@contact).deliver

    render :action => 'complete'
  end
end
