Rails.application.routes.draw do
  resources :sponsors

  get 'reports/index'
  get 'reports/events'
  get 'reports/newsletter'
  get 'reports/intro_speech'

  resources :venues
  resources :series
  resources :events
end
