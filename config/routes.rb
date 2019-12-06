Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'static#home'

  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]

  resources :newsletters
  resources :activities
  resources :situations
  resources :startups
  resources :events
  resources :attendances

  get 'static/home'

end
