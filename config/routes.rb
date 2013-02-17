Dishinit::Application.routes.draw do

  root :to => 'Home#index'
  get "/dishnit" => 'Home#index', as: "home"

  resources :catalogs
  resources :favorites
  resources :users
  resources :recipes
  resources :cookbooks
  resources :categories

  # User Login Session
  get "/sessions/new" => "Sessions#new", :as => "new_session"
  post "/sessions" => "Sessions#create", :as => "sessions"
  delete "/sessions" => "Sessions#destroy"

end
