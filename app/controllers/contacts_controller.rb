class ContactsController < ApplicationController
  def edit
    @contact = Contact.find(params[:id])
  end
end
