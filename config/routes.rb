Rails.application.routes.draw do
  # get 'tickets/new'

  # get 'tickets/create'

  # get 'tickets/show'

  resources :buses
  resources :tickets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
