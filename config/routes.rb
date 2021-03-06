Rails.application.routes.draw do

  devise_for :users, :controllers => {:omniauth_callbacks => "omniauth_callbacks"}

  namespace :admin do
    resources :products
    resources :orders do
      member do
        post :ship
        post :shipped
        post :cancel
        post :return
      end
    end
  end

  resources :products do
    member do
      post :add_to_cart
    end
  end

  resources :carts do
    collection do
      delete :clean
      post :checkout
    end
  end

  resources :cart_items

  resources :orders do
    member do
      post :pay_whit_alipay
      post :pay_whit_wechat
      post :apply_to_cancel
    end
  end

  namespace :account do
    resources :orders
  end


  root 'welcome#index'
end
