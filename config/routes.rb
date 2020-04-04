Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
        }
  resources :volunteers do
    resources :comments, only: [:create]
  end
  get 'search', to: 'volunteers#search'
  resource :order_managements, only: [:create, :destroy]
  resources :users, only: [:show]
  resources :good_evaluations, only: [:create, :destroy]


  root 'volunteers#index'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
