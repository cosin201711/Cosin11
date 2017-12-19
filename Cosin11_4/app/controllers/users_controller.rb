class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@orders = @user.orders.page(params[:page]).reverse_order
	end

	def index
		@user = User.all
		
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		
	end

	def destroy
		user = User.find(params[:id])
        user.update_attribute(:leave,false)
        # redirect_to root_path, notice: "またのご利用しております！"
        sign_out(current_account)
        redirect_to root_path
	end

	def user_params
		params.require(:user).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :post_code, :address, :phone, :leave, :update_at)
	end
end
