Rails.application.routes.draw do
  get 'students', to:'students#index'
  get 'students/new'
  get 'students/:id', to:'students#show', as: :student
  post 'students', to:'students#create'
  get 'students/:id/edit', to:'students#edit', as: :edit_student
  patch 'students/:id', to:'students#update'
  delete 'students/:id', to:'students#destroy'

  get 'batches', to:'batches#index'
  get 'batches/new'
  get 'batches/:id', to:'batches#show', as: :batch
  post 'batches', to:'batches#create'
  get 'batches/:id/edit', to:'batches#edit', as: :edit_batch
  patch 'batches/:id', to:'batches#update'
  delete 'batches/:id', to:'batches#destroy'

  get 'pages/home'

  root to: 'pages#home'
end
