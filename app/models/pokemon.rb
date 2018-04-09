class Pokemon < ApplicationRecord
	validate :image_size_validation
	mount_uploader :image, ImageUploader

	has_many :pokemon_abilities
	has_many :abilities, through: :pokemon_abilities


	has_many :pokemon_types
	has_many :types, through: :pokemon_types

	private
	  def image_size_validation
	    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
	  end
end
