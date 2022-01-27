Rails.application.routes.draw do
  get 'home', to: 'home#index'

  get 'sign_up', to: 'sessions#sign_up'
  post 'sign_up', to: 'sessions#create'

  get 'log_in', to: 'sessions#log_in'
  post 'log_in', to: 'sessions#verify'


end
