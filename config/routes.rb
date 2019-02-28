Rails.application.routes.draw do

  resources :items, only: %i(index show)
  devise_for :users, :controllers => {
 :registrations => 'users/registrations'
}
  root 'items#index'
  resources :profiles, only: :index

end
