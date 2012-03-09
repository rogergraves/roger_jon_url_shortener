RogerJonUrlShortener::Application.routes.draw do
  
  get "urls/edit"

  get "urls/update"

  get "urls/show"

  devise_for :users

  #match ':addurl' => ''
  root :to => "home#index"
  
  match 'add_url' => 'home#create'
  
  resources :urls do
    resources :comments
  end
  

  match ':in_url' => 'home#index' #does the actual URL forwarding when something is entered that isn't recognized
 end
