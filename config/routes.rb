Rails.application.routes.draw do
  root :to => 'pages#index'

  devise_for :users, :controllers => { :registrations => 'registrations'}


  resources :users, only:[:show]
  get 'listings/mio' => 'listings#mio'
  resources :listings
end
