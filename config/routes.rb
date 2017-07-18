Rails.application.routes.draw do
  get 'users/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chat_groups#index'
  resources :chat_groups do
    resources :messages
  end
end
