class Player < ApplicationRecord
    has_many :games
    validates :name, uniqueness: true
    validates :name, presence: true
end
