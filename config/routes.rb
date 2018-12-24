Rails.application.routes.draw do
  get 'evaluations', to:'evaluations#index'
  get 'evaluations/new'
  get 'evaluations/:id', to:'evaluations#show', as: :evaluation
  post 'evaluations', to:'evaluations#create'
  get 'evaluations/:id/edit', to:'evaluations#edit', as: :edit_evaluation
  patch 'evaluations/:id', to:'evaluations#update'
  delete 'evaluations/:id', to:'evaluations#destroy'

  get 'courses', to:'courses#index'
  get 'courses/new'
  get 'courses/:id', to:'courses#show', as: :course
  post 'courses', to:'courses#create'
  get 'courses/:id/edit', to:'courses#edit', as: :edit_course
  patch 'courses/:id', to:'courses#update'
  delete 'courses/:id', to:'courses#destroy'

  get 'teachers', to:'teachers#index'
  get 'teachers/new'
  get 'teachers/:id', to:'teachers#show', as: :teacher
  post 'teachers', to:'teachers#create'
  get 'teachers/:id/edit', to:'teachers#edit', as: :edit_teacher
  patch 'teachers/:id', to:'teachers#update'
  delete 'teachers/:id', to:'teachers#destroy'

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
