Rails.application.routes.draw do
  get 'comments/index'
  get 'customers/index'
  get 'products/index'
  get 'articles/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "articles#index"
   get 'sign_up', to: 'registrations#new'
   post 'sign_up', to: 'registrations#create'
   get 'sign_in', to: 'sessions#new'
   post 'sign_in', to: 'sessions#create', as: 'log_in'
   delete 'logout', to: 'sessions#destroy'

   # resource :admin  
   resources :articles
   resources :products
   resources :customers do
   resources :reviews
   end

  # resolve('article') { [:article] }
end
