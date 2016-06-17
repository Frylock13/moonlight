class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :fight_id
      t.references :fight, index: true, foreign_key: true
      t.integer :player_damage
      t.integer :enemy_damage
      t.integer :status

      t.timestamps null: false
    end
  end
end