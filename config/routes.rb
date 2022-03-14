Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations',
    sessions: 'users/sessions',
    invitations: 'users/invitations'
  }
  root to: "posts#index"
  resources :posts, only: [:new, :create, :show]
end
