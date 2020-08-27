class MinivetmasksController < ApplicationController
before_action :find_mask, only: [:show, :edit, :update, :destroy]

def index   
 @masks = Minivetmask.new	

end

def create
 @masks = Minivetmask.new(mask_params)
    if @masks.save
       redirect_to minivetmasks_path 
    end
end


private

def mask_params
			
	params.require(:minivetmask).permit(:name,:phone_number,:email,:message)

end

def find_mask
    	 
    @contact = Contact.find(params[:id])
 
end


end
