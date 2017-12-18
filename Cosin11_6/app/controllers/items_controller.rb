class ItemsController < ApplicationController
	def new
		@item = Item.new
		1.times do
			disc = @item.discs.build
		 		1.times{ disc.tracks.build }
		end
	end

	def create
		@item = Item.new(item_params)
		redirect_to items_path
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
	  params.require(:item).permit(:adminster_id, 
	  							   :artist_name, 
	  							   :artist_name_kana, 
	  							   :album_name, 
	  							   :price, 
	  							   :label_name, 
	  							   :genre, 
	  							   :cd_image, 
	  							   :stock, 
	  							   :luanch_date, 
	  							   :editor, 
	  							   :item_status,
	  							   :discs_attributes [:id, :disc_number, :disc_name, :_destroy],
	  							   :tracks_attributes [:id, :track_number, :track_name, :artist_name, :_destroy])
	end
end
