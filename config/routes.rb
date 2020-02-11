Rails.application.routes.draw do
  get '/words' => 'words#index'
  get '/words/:id' => 'words#show'

  get '/players' => 'players#index'
  get '/players/:id' => 'players#show'

  get '/games' => 'games#index'
  get '/games/:id' => 'games#show'
end
