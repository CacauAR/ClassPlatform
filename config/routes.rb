Rails.application.routes.draw do
  root "home#index"
  get 'home/index' 
  resources :arquives
  resources :classes
  resources :administrators
  resources :professors
  resources :students
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
