Rails.application.routes.draw do
  get 'home/index'

  resource :contacts, only: [:new, :create] #resorce - метод, который принимаем символ и хеш. Используем только методы new и create на стр.
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
