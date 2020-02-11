class Game < ApplicationRecord
    belongs_to :player
    has_many :game_words
end
