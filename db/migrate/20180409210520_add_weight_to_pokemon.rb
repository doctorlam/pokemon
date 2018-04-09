class AddWeightToPokemon < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :weight, :decimal
  end
end
