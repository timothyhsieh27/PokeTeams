class CreateTrainers < ActiveRecord::Migration[5.0]
  def change
    create_table :trainers do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.integer :team_id, foreign_key: true

      t.timestamps
    end
  end
end
