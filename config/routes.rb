Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  get 'landing/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'contacts#new'

  match '/contacts',     to: 'contacts#new',             via: 'get'
resources :contacts, only: [:new, :create]
end

