Rails.application.routes.draw do
root 'public_view#home'
resources :users
get 'login', to: 'sessions#new'
post 'login', to:'sessions#create'
delete 'logout', to:'sessions#destroy'
resources :tasks


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
