Rails.application.routes.draw do
  root 'home#index'
  get '/labs', to: 'lab_terms#index'
  post '/login', to: 'login#create'
end
