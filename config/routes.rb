Rails.application.routes.draw do
  root 'static_pages#home'
  get  'static_pages/home'
  get  '/music', to: 'static_pages#music'
  get  '/sports', to: 'static_pages#sports'
  get  '/outdoor', to: 'static_pages#outdoor'
  get  '/volunteer', to: 'static_pages#volunteer'
  get  '/grobal', to: 'static_pages#grobal'
  get  '/budo', to: 'static_pages#budo'
  get  '/bunka', to: 'static_pages#bunka'
  get  '/other', to: 'static_pages#other'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :microposts,          only: [:create, :destroy]
end
