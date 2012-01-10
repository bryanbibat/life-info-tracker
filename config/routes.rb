LifeInfoTracker::Application.routes.draw do
  resources :transactions

  resources :categories

  resources :accounts

  root to: "pages#main"
end
