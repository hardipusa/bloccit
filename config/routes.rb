Rails.application.routes.draw do

  get 'index/show'

  resources :posts

  get 'about' => 'welcome#about'
  
  root to: 'welcome#index'
end
