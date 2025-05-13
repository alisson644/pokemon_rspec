class CreatePokemon < ActiveRecord::Migration[8.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :id_national

      t.timestamps
    end
  end
end
