Rails.application.routes.draw do
  resources :posts
  resources :articles
  get "about" , to: 'pages#about'

  #this a way to add routes 
  #get "/articles", to: "articles#index"
  #get "/articles/:id", to: "articles#show"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
