class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references :player, null: false, foreign_key: true
      t.integer :score, default: 0
    end
  end
end
