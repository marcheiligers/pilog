Rails.application.routes.draw do
  resources :weathers
  root 'dashboard#index', as: :dashboard

  resources :logs do
    collection do
      get :last
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
