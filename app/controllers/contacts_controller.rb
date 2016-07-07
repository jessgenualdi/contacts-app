class ContactsController < ApplicationController
  def contact
    @contact = Contact.all
    render 'contacts.html.erb'
  end
end
