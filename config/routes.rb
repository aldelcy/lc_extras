Rails.application.routes.draw do
  devise_for :users
  authenticated do
    root 'site#account', as: :authenticated
  end
  root 'site#index'
  
  resources :questions do
    resources :answers
  end
  
  resources :questsesses do
    resources :questions do
      resources :answers
    end
  end
  resources :breakouts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
