class AddInchesToPokemon < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :inches, :integer
  end
end
