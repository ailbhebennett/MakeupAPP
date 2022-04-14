Rails.application.routes.draw do
  get 'pages/home'
  get 'reviews/index'
  get 'reviews/show'
  get 'reviews/new'
  get 'reviews/edit'

  resources :makeups do
    resources:reviews
 end
  
 
end
