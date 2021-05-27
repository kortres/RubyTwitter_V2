Rails.application.routes.draw do
  resources :posts
  get 'sessions/new'
  root 'static_pages#home'
  get 'static_pages/help'
  get 'newpost' => 'posts#new'
  get 'posts' => 'posts#posts'
  get 'help' => 'static_pages#help'
  get 'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
