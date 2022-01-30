Rails.application.routes.draw do

  get '/trainers', to: 'trainers#index'
  get '/trainers/:id', to: 'trainers#show'
end
