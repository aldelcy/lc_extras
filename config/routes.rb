Rails.application.routes.draw do
  devise_for :users
  root to: "site#index"
  
  resources :questsesses do
    resources :questions do
      resources :answers
    end
  end
  resources :breakouts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
