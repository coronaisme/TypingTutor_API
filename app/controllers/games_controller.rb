class GamesController < ApplicationController
    def index
        games = Game.all
        render json: games
    end

    def show 
        game = Game.find(params[:id])
        render json: game
    end

    def create
        game = Game.create(games_params)
        render json: game
    end

    private
    def games_params
        params.require(:game).permit(:score, :player_id)
    end
    
end
