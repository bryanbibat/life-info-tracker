LifeInfoTracker::Application.routes.draw do
  resources :categories

  resources :accounts

  root to: "pages#main"
end
