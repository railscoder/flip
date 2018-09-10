Rails.application.routes.draw do
  mount RailsDb::Engine => '/rails/db', :as => 'rails_db'
  root to: "home#show"
  resources :subscriptions, only: [:create]
  resources :calls, only: [:create]
end
