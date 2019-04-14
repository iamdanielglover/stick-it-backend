Rails.application.routes.draw do
  resources :users
  resources :notes
  resources :categories
end
