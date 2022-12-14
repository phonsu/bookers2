Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
  resources :books, only:[:create,:edit, :index, :show, :update, :edit, :destroy]
  get "/homes/about" => "homes#about", as: "about"
  get "mypage", to: "homes#mypage"
  resources :users, only:[:create, :edit, :index, :show, :update, :destroy]

end
