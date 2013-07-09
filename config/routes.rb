StripfighterEmber::Application.routes.draw do
  devise_for :users, controllers: {sessions: 'sessions'}

  namespace :api do
    namespace :v1 do
      resources :comics, only: [:create]
      resources :prompts, only: [:index]
      resources :users
    end
  end
  
  root to: 'application#index'
end