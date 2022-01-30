class CreatePokemon < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :hp
      t.boolean :in_battle
      t.references :trainer, foreign_key: true
    end
  end
end
