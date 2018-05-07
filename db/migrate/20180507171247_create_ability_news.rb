class CreateAbilityNews < ActiveRecord::Migration[5.1]
  def change
    create_table :ability_news do |t|
      t.string :description
      t.belongs_to :pokemon, foreign_key: true

      t.timestamps
    end
  end
end
