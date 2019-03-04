Rails.application.routes.draw do

  resources :items, only: %i(index show)
  root 'items#index'
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :profiles, only: :index


  namespace :admin do
    resources :users, only: :index
  end



end
