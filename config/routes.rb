Rails.application.routes.draw do
 root to: 'homes#top'
  get 'homes/top'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
resources :users, only: [:edit, :update, :index, :show, :destroy]


end