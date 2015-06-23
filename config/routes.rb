Rails.application.routes.draw do

 resources :advertisements, only: [:index,:show]

  get 'index/show'

  resources :posts

  get 'about' => 'welcome#about'
  
  root to: 'welcome#index'
end
