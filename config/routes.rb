Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  # add a new task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # root "articles#index"
  get 'tasks', to: 'tasks#index'

  # details tasks
  get 'tasks/:id', to: 'tasks#show', as: :task

  # update task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # destroy a task
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy_task
end
