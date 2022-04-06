Rails.application.routes.draw do
  get 'customerusecase/create'
  get 'customerusecase/show'
  get 'customerusecase/index'
  get 'customerusecase/update'
  get 'customerusecase/destroy'
  get 'caseiots/create'
  get 'caseiots/show'
  get 'caseiots/index'
  get 'caseiots/update'
  get 'caseiots/destroy'
  get 'iotproducts/create'
  # get 'iotproducts/show'  # , to:
  # get 'iotproducts/index' # , to: faut il l'utiliser?
  # get 'iotproducts/update'
  # get 'iotproducts/destroy'
  # get 'customers/create'
  # get 'customers/show'
  # get 'customers/index'
  # get 'customers/update'
  # get 'customers/destroy'
  # get 'usecases/create'
  # get 'usecases/show'
  # get 'usecases/index'
  # get 'usecases/update'
  # get 'usecases/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :usecases, only: [:index] do
    resources :iotproducts, only: [:index, :show]
  end
  resources :customers
end
