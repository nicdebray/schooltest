Rails.application.routes.draw do
  get 'students/index'
  get 'students/show'
  get 'students/new'
  get 'students/create'
  get 'students/edit'
  get 'students/update'
  get 'students/destroy'
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
