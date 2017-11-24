Rails.application.routes.draw do
  
  
  #resources :concesses
  namespace :api do
    namespace :v1, defaults: {format: 'json'} do
      resources :concesses 
      resources :vehicles
      resources :comments     
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
