Rails.application.routes.draw do
  devise_for :users
  resources :posts
  get 'about', to: 'pages#about'

  root "pages#home"
  devise_scope :user do 
    get '/users/sign_out' => 'devise/sessions#destroy' 
  end
end
