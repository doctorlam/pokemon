class CreateCapabilities < ActiveRecord::Migration[5.1]
  def change
    create_table :capabilities do |t|
      t.string :description
      t.belongs_to :pokemon, foreign_key: true

      t.timestamps
    end
  end
end
