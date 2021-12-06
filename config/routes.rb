Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'
  # THIS IS INSTEAD OF THE 3 ABOVE
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]

  resources :videos
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
