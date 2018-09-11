Rails.application.routes.draw do
  root to: "home#show"
  resources :subscriptions, only: [:create]
  resources :calls, only: [:create]
end
