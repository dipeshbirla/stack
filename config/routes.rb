Rails.application.routes.draw do
  get 'answers/index'
  get 'answers/show'
  get 'answers/create'
  get 'answers/new'
  get 'posts/create'
  get 'posts/new'
  get 'posts/update'
  get 'posts/destroy'
  get 'posts/index'
  get 'posts/show'
  get 'posts/edit'
  root "home#index"
  get 'home/index'
   get 'home/profile'
  devise_for :users, :controllers =>{registrations:'registration'}
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :home do 
  	resources :posts do
       resources :answers do
       end
       get :vote
          end
       get :allpost
  end

  resources :posts do
  resources :answers do 
    get :vote
  end
  end 
end




