Rails.application.routes.draw do
  get 'calendar/events'
  get '/events', to: 'calendar#events'
  get "tasks_events", to: "tasks#events"
  get "habits_events", to: "habits#events"

  devise_for :users
  root 'calendar#index'
  resources :users, only: :edit

  resources :projects, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :tasks, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :habits, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end
