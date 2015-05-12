Rails.application.routes.draw do
  devise_for :users

  root 'patients#index'

  resources :patients do
    resources :treatment_plans, shallow: true
    resources :appointments,    shallow: true
  end

  resources :users
  resources :treatments

  get '/appointments', to: 'appointments#all'
end
