Rails.application.routes.draw do
  # get 'doses/new'
  # get 'doses/create'
  # get 'cocktails/index'
  # get 'cocktails/show'
  # get 'cocktails/new'
  # get 'cocktails/create'
  root 'cocktails#index'
  resources :cocktails, only: [:new, :create, :show, :index] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
end
