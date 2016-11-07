class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.string :name, null: false
      t.integer :level, null: false
      t.string :status, null: false
      t.integer :trainer_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
