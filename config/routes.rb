Rails.application.routes.draw do

  devise_for :users
  resources :formulas do
    post    :star,    on: :member,      to: 'formulas#star'
    delete  :unstar,  on: :member,      to: 'formulas#unstar'
    get     :stars,   on: :collection,  to: 'formulas#stars'
    get     :search,  on: :collection,  to: 'formulas#search'
  end

  root 'formulas#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
