Rails.application.routes.draw do

 # get 'comments/create'
 # get 'article/show'

  resources :articles do
    resources :comments
  end

  root controller: :landing, action: :index
end
