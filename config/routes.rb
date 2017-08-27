Rails.application.routes.draw do

  get 'relationships/create'
  get 'relationships/destroy'

  resources :topics
  resources :relationships, only: [:create, :destroy]

  root 'top#index'


  resources :topics do
    resources :comments
    post :confirm, on: :collection
  end

  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  resources :users, only: [:index,:show]
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  resources :conversations do
    resources :messages
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
