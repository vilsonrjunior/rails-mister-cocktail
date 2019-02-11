Rails.application.routes.draw do
  # get 'doses/new'
  # get 'doses/create'
  # get 'cocktails/index'
  # get 'cocktails/show'
  # get 'cocktails/new'
  # get 'cocktails/create'
  resources :cocktails, only: [:new, :create, :show, :index] do
    resources :doses, only: [:new, :create, :destroy]
  end
end
