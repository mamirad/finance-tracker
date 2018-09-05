Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'welcome#index'
#get '/patients/:id', to: 'patients#show'
get 'search', to: 'users#search'
get 'search_stock', to: 'stock#search'
 resources :userstocks
#resources :userstocks, only: [:create]
end
