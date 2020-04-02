Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, controllers: {
        registrations: 'users/registrations'
        }
  resources :volunteers
  resource :order_managements, only: [:create, :destroy]
  resources :users, only: [:show]

  root 'volunteers#index'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
