Rails.application.routes.draw do
  resources :posts
  # resources :articles
  # association with comments
root "articles#index"

resources :articles do
  resources :comments
end
  get "about" , to: 'pages#about'

  #this a way to add routes 
  #get "/articles", to: "articles#index"
  #get "/articles/:id", to: "articles#show"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "pages#home"

# this wil go to 	/admin/articles
  namespace :admin do
    resources :articles
  end
  
  # adding a member This will recognize /articles/1/preview with GET, 
  resources :articles do
    member do
      get 'preview'
    end
  end

# adding a collection /articles/search This will enable Rails to recognize paths such as /photos/search with GET, 
# resources :articles do
#   collection do
#     get 'search'
#   end
# end




end
