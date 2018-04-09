class AddSpecyToPokemon < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :specy, :string
  end
end
