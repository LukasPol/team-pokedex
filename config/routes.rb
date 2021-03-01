Rails.application.routes.draw do
  root 'teams#index'
  devise_for :trainers
  resources :teams
  resources :profile, only: [:show]

  namespace :api do
    namespace :v1 do
      resources :teams
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
