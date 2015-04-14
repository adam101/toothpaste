Rails.application.routes.draw do
  root 'patients#index'

  resources :patients
  resources :users
  resources :treatment_plans
  resources :treatments
end
