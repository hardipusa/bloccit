Rails.application.routes.draw do

<<<<<<< HEAD
  resources :posts

resources :questions, :index, :individual, :new, :edit, :update, :delete
=======
   resources :posts
   
>>>>>>> 27bbed284cf37bb03233fa209317c403ec92934b
  get 'about' => 'welcome#about'
  
  root to: 'welcome#index'
end
