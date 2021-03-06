Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'dashboards#show'
  resources :items do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [ :index, :new, :create ]
  end
  resources :reviews, only: [ :show ]
  get '/ascitems', to: 'items#filterasc'
  get '/dscitems', to: 'items#filterdsc'
  resources :bookings, only: [:index, :show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  patch '/bookings/:id/accept', to: 'bookings#accept_booking', as: :accept
  patch '/bookings/:id/reject', to: 'bookings#reject_booking', as: :reject
end


