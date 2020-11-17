Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # List all tasks
  get "/tasks", to: "tasks#index", as: :task_list
  # display form to create new task
  get "/tasks/new", to: "tasks#new", as: :task_new
  # create task in DB
  post "/tasks", to: "tasks#create"
  # show task details
  get "/tasks/:id", to: "tasks#show", as: :task  
  # show task form to edit
  get "/tasks/:id/edit", to: "tasks#edit", as: :task_edit
  # Update
  patch "/tasks/:id", to: "tasks#update"
  # # Delete
  delete "/tasks/:id", to: "tasks#destroy", as: :task_destroy

end
