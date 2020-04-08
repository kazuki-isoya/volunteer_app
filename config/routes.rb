Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
        registrations: 'users/registrations'
        }
  resources :volunteers do
    resources :comments, only: [:create, :destroy]
  end
  get 'search', to: 'volunteers#search'
  resource :order_managements, only: [:create, :destroy]
  resources :users, only: [:show]
  resources :good_evaluations, only: [:create, :destroy]
  resources :categories


  root 'volunteers#index'
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end
