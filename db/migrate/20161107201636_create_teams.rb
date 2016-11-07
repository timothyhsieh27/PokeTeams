class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.integer :trainer_id, null: false, foreign_key: true
      t.string :squad_name, null: false

      t.timestamps
    end
  end
end
