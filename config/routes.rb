RogerJonUrlShortener::Application.routes.draw do
  
  devise_for :users

  #match ':addurl' => ''
  root :to => "home#index"
  
  match 'add_url' => 'home#create'
  
  

  match ':in_url' => 'home#index' #does the actual URL forwarding when something is entered that isn't recognized
 end
