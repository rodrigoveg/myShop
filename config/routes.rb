Rails.application.routes.draw do
  root 'home#index'
  get 'about', to: 'home#about', as: :about
  get 'contact', to: 'home#contact', as: :contact

  resources :products
end
