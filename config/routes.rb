Rails.application.routes.draw do


  resources :posts

resources :questions, :index, :individual, :new, :edit, :update, :delete

  get 'about' => 'welcome#about'
  
  root to: 'welcome#index'
end
