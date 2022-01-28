Rails.application.routes.draw do
  get 'home', to: 'home#index'

  get 'sign_up', to: 'sessions#sign_up'
  post 'sign_up', to: 'sessions#create'

  get 'log_in', to: 'sessions#log_in'
  post 'log_in', to: 'sessions#verify'

  get 'log_out', to: 'sessions#log_out'

  get 'your_profile', to: 'profiles#your_profile'

  resources :rooms, only: :show do
    resources :messages, only: :create
  end
  

end
