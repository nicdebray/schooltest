Rails.application.routes.draw do

  root to: 'pages#home'

  resources :batches do
  end

  get 'copies', to:'copies#index'
  get 'copies/new'
  get 'copies/:id', to:'copies#show', as: :copy
  post 'copies', to:'copies#create'
  get 'copies/:id/edit', to:'copies#edit', as: :edit_copy
  patch 'copies/:id', to:'copies#update'
  delete 'copies/:id', to:'copies#destroy'

  get 'assignments', to:'assignments#index'
  get 'assignments/new'
  get 'assignments/:id', to:'assignments#show', as: :assignment
  post 'assignments', to:'assignments#create'
  get 'assignments/:id/edit', to:'assignments#edit', as: :edit_assignment
  patch 'assignments/:id', to:'assignments#update'
  delete 'assignments/:id', to:'assignments#destroy'

  devise_for :users
  get 'memberships/new'
  get 'memberships/create'
  get 'evaluations', to:'evaluations#index'
  get 'evaluations/new'
  get 'evaluations/:id', to:'evaluations#show', as: :evaluation
  post 'evaluations', to:'evaluations#create'
  get 'evaluations/:id/edit', to:'evaluations#edit', as: :edit_evaluation
  patch 'evaluations/:id', to:'evaluations#update'
  delete 'evaluations/:id', to:'evaluations#destroy'

  resources :memberships

  resources :courses do
    resources :memberships, only: [:index, :new, :create]
  end

  resources :students do
    resources :memberships, only: [:index, :new, :create]
  end

  resources :teachers

end
