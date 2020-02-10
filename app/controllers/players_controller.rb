class PlayersController < ApplicationController
    def index
        players = Player.all
    end

    def show
        player = Player.find(params[:id])
    end

    def create
        player = Player.create()
    end
end
