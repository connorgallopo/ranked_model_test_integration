Rails.application.routes.draw do
  resources :sprints
  resources :backlog_items
  get '/backlog_items/:id/up', to: 'backlog_items#up', as: 'up'
  get '/backlog_items/:id/down', to: 'backlog_items#down', as: 'down'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
