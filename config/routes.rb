Rails.application.routes.draw do
  get 'group/index'
  get 'group/edit'
  get 'group/new'
  get 'index/edit'
  get 'index/new'
  get 'group/index'
  get 'group/show'
  get 'group/edit'
  get 'group/update'
  get 'group/create'
  get 'group/new'
  get 'group/destroy'
  root 'pages#index'
  get 'pages/show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
