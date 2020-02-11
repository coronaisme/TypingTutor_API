class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references :player, null: false, foreign_key: true
      t.integer :score
    end
  end
end
