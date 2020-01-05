Rails.application.routes.draw do
  root to: 'landings#index'
  resources :landings, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
