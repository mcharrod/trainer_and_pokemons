Rails.application.routes.draw do

  get '/trainers', to: 'trainers#index'
  get '/trainers/:trainer_id', to: 'trainers#show'

  get '/pokemons', to: 'pokemons#index'
  get '/pokemons/:pokemon_id', to: 'pokemons#show'

  get '/trainers/:trainer_id/pokemons', to: 'trainer_pokemons#index'
end
