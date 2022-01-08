Rails.application.routes.draw do
  resources :phieunhaps
  resources :quydinh
  resources :quanlyusers, only: [:show, :index]
  resources :baocaocongnos
  resources :baocaotons
  resources :phieuthus
  resources :khachhangs
  resources :kiemkhos
  resources :hoadons
  resources :tracuusaches
  resources :tacgia
  resources :dausaches
  resources :home

  devise_for :users, controllers: {
    sessions: 'users/sessions', 
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  devise_scope :user do
    root :to => 'home#index'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
