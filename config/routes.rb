Rails.application.routes.draw do

  resources :items, only: %i(index show new)
  root 'items#index'
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :profiles, only: [:index, :show, :edit]


  namespace :admin do
    resources :users, only: [:index,:show]
  end

  resources :registrations,only:[:index,:new]

end
