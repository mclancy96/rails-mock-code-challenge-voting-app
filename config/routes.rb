Rails.application.routes.draw do
  resources :polls, only: [:index]
  resources :options, only: [:index]
end
