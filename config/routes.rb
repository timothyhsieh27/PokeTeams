Rails.application.routes.draw do
  root 'teams#new'

  resources :teams, only: [:new, :create, :index]
end
