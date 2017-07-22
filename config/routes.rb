Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # dashboard with be the home
  root 'pages#dashboard'
  get 'about', to: 'pages#about'

  resources :todos
  
end
