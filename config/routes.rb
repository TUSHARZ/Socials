Rails.application.routes.draw do
  get 'comments/create'

  get 'comments/destroy'
  get 'friendships/index'

  devise_for :users
  resources :posts, only: [:index, :create, :destroy]
  resources :comments, only: [:create, :destroy]
  resources :friendships
  resources :likes
  get '/likes/toggle_like' => "likes#toggle_like" , :as => :toggle
  root "posts#index"
end
