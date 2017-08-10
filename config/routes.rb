Rails.application.routes.draw do

  root :to => 'pages#index'

  devise_for :users, :controllers => { :registrations => 'registrations'}


  resources :users, only:[:show]
  get 'listings/mio' => 'listings#mio'
  resources :listings

  get 'manage-listing/:id/basics' => 'listings#basics',as: 'manage_listing_basics'
  get 'manage-listing/:id/description' => 'listings#description',as: 'manage_listing_description'

end
