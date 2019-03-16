Rails.application.routes.draw do

  resources :items, only: %i(index show new)
  root 'items#index'
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :profiles, only: [:index, :show, :edit, :new]
  get 'logout', to: 'profiles#logout'
  get 'credit1', to: 'profiles#credit1'
  get 'credit2', to: 'profiles#credit2'

  namespace :admin do
    resources :users, only: [:index,:show]
  end

  resources :registrations,only:[:index,:new]

  resources :categories,only: :index

end
