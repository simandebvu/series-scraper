Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'shows#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'

  resources :shows do
    resources :comments
  end

end
