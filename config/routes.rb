Rails.application.routes.draw do
  get 'reports/index'

  get 'reports/events'

  resources :venues
  resources :series
  resources :events
end
