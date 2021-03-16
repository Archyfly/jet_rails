Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #post 'gamer_achieves/new' => 'gamer_achieves#new'
  get 'results/gamer' => 'gamers#show_results'

  resources :results
  resources :teams
  resources :gamers
  resources :gamer_achieves
  resources :matches
  resources :achieves

end
