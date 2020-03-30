Rails.application.routes.draw do
  get 'volunteers/index'
  get 'volunteers/new'
  get 'volunteers/edit'
  get 'volunteers/show'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
