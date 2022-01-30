Rails.application.routes.draw do

  get '/trainers', to: 'trainers#index'
  get '/trainers/:id', to: 'trainers#show'

  get '/pokemons', to: 'pokemons#index'
  get '/pokemons/:id', to: 'pokemons#show'
end
