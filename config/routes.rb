Rails.application.routes.draw do
  resources :posts do
    collection do
      get 'getcsv'
    end
    resources :comments
  end
  resources :comments do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
