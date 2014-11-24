PostitTemplate::Application.routes.draw do
  root to: 'patients#index'

  resources :patients do 
    collection {post :import}
  end
  resources :posts
  resources :comments, only: [:create, :new]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

end
