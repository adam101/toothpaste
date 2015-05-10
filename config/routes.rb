Rails.application.routes.draw do
  devise_for :users

  root 'patients#index'

  resources :patients do
    resources :treatment_plans, shallow: true
  end

  resources :users
  #resources :treatment_plans
  resources :treatments
end
