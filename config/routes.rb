StripfighterEmber::Application.routes.draw do
  resources :comics
  resources :prompts
  root to: 'application#index'
  
end
