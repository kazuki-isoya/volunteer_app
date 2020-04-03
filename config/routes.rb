Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'users/registrations'
        }
  resources :volunteers
  get 'search', to: 'volunteers#search'
  resource :order_managements, only: [:create, :destroy]
  resources :users, only: [:show]

  root 'volunteers#index'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
