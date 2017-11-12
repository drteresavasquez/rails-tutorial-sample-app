Rails.application.routes.draw do

  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help', as: 'helf' #This allows us to call the path one thing but have the route be something else
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users
end
