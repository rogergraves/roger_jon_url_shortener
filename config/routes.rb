RogerJonUrlShortener::Application.routes.draw do
  
  devise_for :users
  
  match ':addurl' => 'home#index'

  root :to => "home#index"
  
  

  # match ':in_url' => 'home#index' #added this line
 end
