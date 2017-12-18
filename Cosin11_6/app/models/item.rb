class Item < ApplicationRecord
	belongs_to :adminster
	has_many :discs, :dependent => :destroy
	has_many :carts

	attachment :cd_image

	accepts_nested_attributes_for :discs, allow_destroy: true
end
