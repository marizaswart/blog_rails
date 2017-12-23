Rails.application.routes.draw do
  get 'landing/index'

  resources :articles

  root controller: :landing, action: :index
end
