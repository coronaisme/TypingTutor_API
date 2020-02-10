class PlayedGamesController < ApplicationController
    def index
        played_games = PlayedGames.all
    end
end
