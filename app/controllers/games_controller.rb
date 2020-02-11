class GamesController < ApplicationController
    def index
        games = Game.all
        render json: games
    end

    def create
        game = Game.create(games_params)
    end

    private
    def games_params
        params.require(:game).permit(:score, :player_id)
    end
    
end
