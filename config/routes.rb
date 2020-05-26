Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :public_data, only: [:new, :create, :index, :show, :destroy] do
  	resources :comments, only: [:new, :create]
  end
  resources :lai_requests, only: [:new, :create, :index, :show, :destroy] do
    member do
      patch 'submit'
    end
    collection do
      get 'city_government_agency_names'
    end
  	resources :request_answers, only: [:new, :create]
  end
end
