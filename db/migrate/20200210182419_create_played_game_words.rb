class CreatePlayedGameWords < ActiveRecord::Migration[6.0]
  def change
    create_table :played_game_words do |t|
      t.references :played_game
      t.references :word

      t.timestamps
    end
  end
end
