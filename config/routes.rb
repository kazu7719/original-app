Rails.application.routes.draw do
  get 'calendar/events'
  get '/events', to: 'calendar#events'

  devise_for :users
  root 'calendar#index'
  resources :users, only: :edit

  resources :projects, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end
