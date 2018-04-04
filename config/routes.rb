Rails.application.routes.draw do
  resources :personal_data
  resources :operating_schedules
  resources :contracts
  resources :staffs
  resources :posts
  resources :marital_statuses
  resources :method_payments
  resources :months
  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
