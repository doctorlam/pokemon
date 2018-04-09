class AddFeetToPokemon < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :feet, :integer
  end
end
