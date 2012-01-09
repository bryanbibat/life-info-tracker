LifeInfoTracker::Application.routes.draw do
  resources :accounts

  root to: "pages#main"
end
