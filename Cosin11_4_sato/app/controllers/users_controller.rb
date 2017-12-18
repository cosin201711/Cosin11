class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

	def index
		@user = User.all
		
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(user_params)
		# sign_in(@user, bypass: true) if current_user.id == @user.id
        redirect_to edit_user_path(@user.id), notice: "更新しました。"
	end

	def destroy
		
	end

	def user_params
		params.require(:user).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :post_code, :address, :phone, :leave, :update_at, :email, :password)
	end

end
