NoughtsAndCrosses::Application.routes.draw do
  root :to => "users#index"
  # The priority is based upon order of creation:
  # first created -> highest priority.
  resources :games
  resources :users
  resources :sessions, only: [:create, :destroy]

  #this
  post "/users" => "users#create", as: :users
  get "/users/:id" => "users#show", as: :user
  # is the same as
  # resources :users, only: [:create]

  get "/games/:id/register_move" => "games#register_move", as: :register_move

  get "/signin" => "sessions#new", as: :signin
  delete "/signout" => "sessions#destroy", as: :signout
  get "/signup" => "users#new", as: :signup

  get "/leaderboard" => "users#leaderboard", as: :leaderboard



end
