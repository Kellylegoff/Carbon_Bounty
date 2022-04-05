Rails.application.routes.draw do
  get 'iotproducts/create'
  get 'iotproducts/show'
  get 'iotproducts/index'
  get 'iotproducts/update'
  get 'iotproducts/destroy'
  get 'customers/create'
  get 'customers/show'
  get 'customers/index'
  get 'customers/update'
  get 'customers/destroy'
  get 'usecases/create'
  get 'usecases/show'
  get 'usecases/index'
  get 'usecases/update'
  get 'usecases/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
