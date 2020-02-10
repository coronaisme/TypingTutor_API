class PlayedGameWord < ApplicationRecord
    belongs_to :played_game
    belongs_to :word
end
