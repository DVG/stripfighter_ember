StripfighterEmber::Application.routes.draw do
  devise_for :users, controllers: {sessions: 'sessions', registrations: 'registrations'}

  namespace :api do
    namespace :v1 do
      resources :comics, only: [:create, :index] do
        member do
          post :upvote
          post :downvote
        end
      end
      resources :prompts, only: [:index]
      resources :users
    end
  end
  
  root to: 'application#index'
end
