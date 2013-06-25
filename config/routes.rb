StripfighterEmber::Application.routes.draw do
  resources :prompts


  root to: 'application#index'
  resources :prompts
end
