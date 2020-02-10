class CreatePlayedGames < ActiveRecord::Migration[6.0]
  def change
    create_table :played_games do |t|
      t.integer :score
      t.references :word
      t.references :player

      t.timestamps
    end
  end
end
