Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'profile', to: 'pages#profile'
  get 'company', to: 'pages#company'
  get 'friends', to: 'pages#friends'
  get 'vote', to: 'pages#vote'
end
