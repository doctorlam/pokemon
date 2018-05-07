class Pokemon < ApplicationRecord
	validate :image_size_validation
	mount_uploader :image, ImageUploader

	has_many :pokemon_abilities
	has_many :abilities, through: :pokemon_abilities

	has_many :capabilities, inverse_of: :pokemon, dependent: :destroy
  accepts_nested_attributes_for :capabilities, reject_if: :all_blank, allow_destroy: true

	has_many :pokemon_types
	has_many :types, through: :pokemon_types

	scope :by_types, ->(ids_ary) { joins(pokemon_types: :type).where("types.id" => ids_ary) }

	scope :by_species, -> specy { where(:specy => specy) }


	private
	  def image_size_validation
	    errors[:image] << "should be less than 3MB" if image.size > 3.0.megabytes
	  end
end
