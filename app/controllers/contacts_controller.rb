class ContactsController < ApplicationController


before_action :find_contact, only: [:show, :edit, :update, :destroy]

def index   
 @contacts = Contact.order(created_at: :desc)
end

def create
 @contacts = Contact.new(contact_params)
    if @contacts.save
       redirect_to homes_path 
    end
end

def minivet_exim903535
	
 @contacts = Contact.all
 @masks = Minivetmask.all

end


private

def contact_params
			
	params.require(:contact).permit(:name,:phone_number,:email,:message)

end

def find_contact
    	 
    @contact = Contact.find(params[:id])
 
end


end
