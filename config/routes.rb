RogerJonUrlShortener::Application.routes.draw do
  
  devise_for :users

  root :to => "home#index"


  match ':in_url' => 'home#index' #added this line
 end
