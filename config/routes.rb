Rails.application.routes.draw do
  # get '/', to: 'application#home'
  # resources :application
  get '/', to: 'sales_people#home'
  get '/about', to: 'sales_people#about'
  resources :orders
  resources :sales_people
  resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
