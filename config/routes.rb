Rails.application.routes.draw do
  resources :typeairplanes
  devise_for :users
  get 'admin/indexadmin'
  root :to => 'home#indexhome'

  resources :flights
  resources :airplanes
  resources :pilots


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
