Rails.application.routes.draw do

  resources :items, only: %i(index show new)
  root 'items#index'
  devise_for :users, :controllers => { :registrations => 'users/registrations' }



  resources :profiles, only: :index


  namespace :admin do
    resources :users, only: :index
  end

  resources :registrations,only:[:index,:new]

end
