Rails.application.routes.draw do
  resources :users
  resources :post_images do
    resources :post_comments
    resource :favorite
  end
  
  devise_for :admin, skip: [:registrations, :password], controllers: {
    sessions: 'admin/sessions'
  }
  
  devise_for :users, controllers: {
        sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' => 'homes#top'
  root to: "homes#top"
  get 'homes/about', to: 'homes#about', as: 'about'

end
