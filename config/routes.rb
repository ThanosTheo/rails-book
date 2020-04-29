Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/create'
  get 'posts/show'
  devise_for :users

  root to: "users#index"

  get '/users/:id', to: 'users#show', as: :user
  post '/users/:id', to: 'users#show'

  get '/my_profile', to: 'users#my_profile'
  patch '/my_profile', to: 'users#my_profile'

  get '/post/new', to: 'posts#new'
  post '/post/new', to: 'posts#create'
  get '/post/:id', to: 'posts#show'
  post '/post/:id', to: 'posts#my_comment'



  devise_scope :user do
    get "/signup", to: "devise/registrations#new"
    get "/login", to: "devise/sessions#new"
    get "/logout", to: "devise/sessions#destroy"
  end

  resources :posts, :comments
end
