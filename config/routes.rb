Rails.application.routes.draw do

  root 'pages#index'
  get 'pages/show'
  devise_for :users

  resources :boardgroup do
    resources :board do
      resources :task
    end
    
    resources :team
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
