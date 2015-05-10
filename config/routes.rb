Rails.application.routes.draw do
  devise_for :users

  root 'patients#index'

  resources :patients
  resources :users
  resources :treatment_plans
  resources :treatments
end
