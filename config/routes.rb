Rails.application.routes.draw do
  get "home"=> 'home#index'

  resources :employees


  get "about" =>'pages#about_us'
  get "contact"=>'pages#contact_us'
  get "pages1"=>'pages#pages1'
  root 'home#index'
  get "empnew" => 'employees#new'
  get "empindex" => 'employee#index'





end
