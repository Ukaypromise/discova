Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users, controllers:{
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/u/:id', to: 'users#profile', as: 'user'
#The following code bellow will redirect to something like this /post/1/comments/4
  resources :posts do
    resources :comments
  end
  get 'about', to: 'pages#about'
  get 'search', to: 'posts#search', as: 'search'


  root "pages#home"
  devise_scope :user do 
    get '/users/sign_out' => 'devise/sessions#destroy' 
  end
end
