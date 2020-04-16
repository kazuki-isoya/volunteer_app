Rails.application.routes.draw do
  get 'top/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
        registrations: 'users/registrations'
        }
  resources :volunteers do
    resources :comments, only: [:create, :destroy, :edit, :update]
  end
  get 'search', to: 'volunteers#search'
  resource :order_managements, only: [:create, :destroy]
  resources :users, only: [:show]
  resources :good_evaluations, only: [:create, :destroy]
  resources :categories


  root 'top#index'
  mount LetterOpenerWeb::Engine, at: "/letter_opener" # if Rails.env.development?
end
