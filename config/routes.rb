RogerJonUrlShortener::Application.routes.draw do
  
  devise_for :users

  #match ':addurl' => ''
  root :to => "home#index"
  
  resources :url
  
  #match ':new_url_path' => 'url#new'
  
  

  match ':in_url' => 'home#index' #does the actual URL forwarding when something is entered that isn't recognized
 end
