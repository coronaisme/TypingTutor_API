class Word < ApplicationRecord
    has_many :played_games
    has_many :played_game_words
end
