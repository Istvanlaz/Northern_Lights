Rails.application.routes.draw do
  root to: 'landings#index'
  get 'lift_index', to: 'lifts#lift_index'
  resources :landings, only: [:index, :show], as: :accueil
  resources :reponses, only: [:new, :create]
  resources :pages, only: [:index, :show], as: :pages
  resources :lifts do
    resources :passengers, only: [:index, :new, :show, :create]
  end
  resources :dress_codes, only: [:index], as: :dress_code
  resources :photos, only: [:index], as: :photos
  resources :remerciements, only: [:new, :create]
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
