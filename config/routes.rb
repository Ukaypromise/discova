Rails.application.routes.draw do
  devise_for :users, controllers:{
    sessions: 'users/session',
    registrations: 'users/registrations'
  }
  resources :posts
  get 'about', to: 'pages#about'

  root "pages#home"
  devise_scope :user do 
    get '/users/sign_out' => 'devise/sessions#destroy' 
  end
end
