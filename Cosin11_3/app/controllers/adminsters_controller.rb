class AdminstersController < ApplicationController
	
	def top
		@items = Item.all
	end
	
	def manage_users
		
	end

	def edit_user_details
		@user = User.find(params[:id])
	end
end
