Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html]
  root "products#index"
  resources :products

  resources :products do
    resources :reviews, except: [:index, :new, :show]
  end

  resources :users, except: [:index, :edit, :update, :destroy, :show]
  resources :sessions, except: [:index, :edit, :update, :show]

end
