Rails.application.routes.draw do
  resources :speakers
  resources :talks
  resources :participants
  resources :registrations, only: %i[create destroy]
  root "talks#index"
end
