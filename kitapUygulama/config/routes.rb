Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'arama/index'
  devise_for :users
  resources :kitaps, :path => "kitaplar" do
    resources :yorums
  end
  resources :yazars, :path => "yazarlar"
  root "kitaps#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
