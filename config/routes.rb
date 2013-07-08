StripfighterEmber::Application.routes.draw do
  devise_for :users, controllers: {sessions: 'sessions'}

  namespace :api do
    namespace :v1 do
      resources :comics
      resources :prompts, :only => [:index]
      resources :users, only: [:show]
    end
  end
  root to: 'application#index'
end