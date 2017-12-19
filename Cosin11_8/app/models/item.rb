class Item < ApplicationRecord
	belongs_to :adminster
	has_many :discs, :dependent => :destroy
	has_many :carts

	attachment :cd_image


	#scope :get_by_album_name, ->(album_name){ where( "album_name like ?", "%#{album_name}%" )}
	#scope :get_by_artist_name, ->(artist_name) { where("artist_name like ?", "%#{artist_name}%" )}
	#scope :get_by_artist_name_kana, ->(artist_name_kana) { where("artist_name_kana like ?", "%#{artist_name_kana}
	#scope :get_all, ->(search) { where(Item.arel_table[:artist_name_kana].matches("%#{search}%").or(Item.arel_table[:artist_name].matches("%#{search}%"))) }

	scope :get_all, ->(search) { where(Item.arel_table[:album_name].matches("%#{search}%").or(Item.arel_table[:artist_name_kana].matches("%#{search}%").or(Item.arel_table[:artist_name].matches("%#{search}%")))) }


	accepts_nested_attributes_for :discs, allow_destroy: true
end