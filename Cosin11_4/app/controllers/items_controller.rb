class ItemsController < ApplicationController
	def new
		@item = Item.new
	end

	def create
		@item = Item.new(item_params)
		# binding.pry
		@item.adminster_id = current_adminster.id
		if @item.save
		  redirect_to items_path
		else
        render 'new'
        end
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		@item = Item.find(params[:id])
		@item.update(item_params)
		redirect_to items_path
	end

	def destroy
		@item = Item.find(params[:id])
		@item.destroy
		redirect_to items_path
	end

	def index
		@items = Item.all
	end

	def show
		@item = Item.find(params[:id])
	end

	def destroy
	end

	private
	def item_params
	  params.require(:item).permit(:adminster_id,:album_name, :price, :label_name, :genre, :luanch_date, :cd_image)
	end
end
