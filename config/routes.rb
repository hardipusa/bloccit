Rails.application.routes.draw do

  get 'summaries/index'

  get 'summaries/new'

  get 'summaries/show'

  get 'summaries/edit'

  devise_for :users
   resources :posts
   resources :topics
   
  get 'about' => 'welcome#about'
  
  root to: 'welcome#index'
end
