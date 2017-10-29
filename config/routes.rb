Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'admin/dashboard#index'

  resources :posts, only: [:index, :show]
  get '/pages/:url', to: 'pages#show', as: "page"
  
end
