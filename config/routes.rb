Rails.application.routes.draw do
  # get 'bookings/index'
  # get 'bookings/show'
  # get 'bookings/new'
  # get 'bookings/create'
  # get 'bookings/update'
  # get 'bookings/destroy'
  # get 'services/index'
  # get 'services/show'
  # get 'services/new'
  # get 'services/create'
  # get 'services/edit'
  # get 'services/update'
  # get 'services/destroy'
  resources :services do
    resources :bookings, only: [:new, :create, :show]
    resources :reviews, only: [:new, :create]
  end

  get "my-services", to: "services#my_services"
  get "my-bookings", to: "bookings#my_bookings"

  resources :bookings, only: [:index, :show, :update, :destroy]

  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check


  # Defines the root path route ("/")
  # root "posts#index"
end
