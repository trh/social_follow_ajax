Followuser::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users

  resources :users, :only => [:index, :show] do
    resources :follows, :only => [:create, :destroy]
  end
end
