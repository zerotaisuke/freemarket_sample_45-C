Rails.application.routes.draw do

  resources :items do
    collection do
      get 'search'
    end
    resources :trades, only: [:new, :create]
  end
  resources :items, only: %i(index show new) do
  end
  root 'items#index'
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :profiles, only: [:index, :show, :edit, :new] do
    collection do
      get 'logout'
      get 'registration_creditcard'
      get 'credit2'
  end
end

  namespace :admin do
    resources :users, only: [:index,:show]
  end

  resources :registrations,only: :new

  resources :categories,only: :index

end
