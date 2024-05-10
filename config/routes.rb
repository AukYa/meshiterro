Rails.application.routes.draw do
  resources :users
  resources :post_images
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' => 'homes#top'
  root to: "homes#top"
  get 'homes/about', to: 'homes#about', as: 'about'

end
