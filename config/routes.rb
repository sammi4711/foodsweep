Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  get 'lists/edit'

  get 'welcome/index'
  get 'welcome/about'

  root 'welcome#index'

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :lists

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
