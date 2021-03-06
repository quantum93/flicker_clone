Rails.application.routes.draw do
  resources :comments
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'users#index'
  devise_for :users
  resources :users do
    resources :photos
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
