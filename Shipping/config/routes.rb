Rails.application.routes.draw do
  
  devise_for :users
  resources :ships
  resources :jobs
root to: 'jobs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
