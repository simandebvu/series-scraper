Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'series#index'
  get 'about' => 'pages#about'

  resources :series

end
