class Player < ApplicationRecord
    has_many :played_games
    has_many :words, through: :played_games
end
