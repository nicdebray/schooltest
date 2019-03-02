Rails.application.routes.draw do
  root to: 'pages#home'

  resources :assignments
  resources :batches
  resources :copies
  resources :courses do
    resources :memberships, only: [:index, :new, :create]
  end
  resources :memberships
  resources :students do
    resources :memberships, only: [:index, :new, :create]
  end
  resources :teachers

  devise_for :users

end
