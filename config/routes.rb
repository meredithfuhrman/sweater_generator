Rails.application.routes.draw do
  root 'sweaters#index'
  devise_for :users

  resources :sweaters
  resources :measurements
  resources :swatches
end
