class GamesController < ApplicationController
    def index
        # byebug
        if params[:user_id]
            player = Player.find(params[:user_id])
            player_games = player.games

            render json: player_games
        else
            games = Game.all
            render json: games
        end

    end

    def show 
        game = Game.find(params[:id])
        render json: game
    end

    def create
        game = Game.create(games_params)
        render json: game
    end

    def update
        game = Game.find(params[:id])
        game.update(games_params)
        render json: game
    end

    private
    def games_params
        params.require(:game).permit(:score, :player_id)
    end
    
end
