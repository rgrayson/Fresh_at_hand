Rails.application.routes.draw do
  root 'startup#index'

  #global routes
  get 'startup/login' => 'startup#login'

  #controller routes (CRUD actions only)
  resources :recipe
  resources :work_print_label do
    get :print
  end
end
