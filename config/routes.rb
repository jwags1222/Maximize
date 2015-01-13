PostitTemplate::Application.routes.draw do
  root to: 'patients#index'

  resources :patients do 
    collection {post :import}
  end
  resources :posts
  resources :comments, only: [:create, :new]
  resources :users, only: [:show, :create, :edit, :update]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get '/dashboards', to: 'dashboards#index'
  post '/dashboards', to: 'dashboards#show'

end
