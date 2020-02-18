Rails.application.routes.draw do
  root to: 'static_pages#index'
  get 'static_pages/index'
  get 'static_pages/secret'
  get 'events/new'
  get 'events/index'
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
