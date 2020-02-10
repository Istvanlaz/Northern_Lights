Rails.application.routes.draw do
  root to: 'landings#index'
  resources :landings, only: [:index, :show], as: :accueil
  resources :repondre, only: [:index], as: :repondre
  resources :lifts
  resources :dress_codes, only: [:index], as: :dress_code
  resources :photos, only: [:index], as: :photos
  resources :remerciements, only: [:index], as: :remerciements
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
