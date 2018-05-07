class CreateWishlists < ActiveRecord::Migration[5.1]
  def change
    create_table :wishlists do |t|
      t.string :name
      t.boolean :purchased

      t.timestamps
    end
  end
end
