Rails.application.routes.draw do
  get 'calendar/events'
  get '/events', to: 'calendar#events'

  devise_for :users
  root "projects#index"
  resources :users, only: :edit
end
