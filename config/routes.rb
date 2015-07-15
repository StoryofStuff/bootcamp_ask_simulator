Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resource 'ask_simulator', only: [:show, :destroy]
  resource 'spread_the_word', only: [:new, :create, :show, :edit, :destroy]

  resources 'questions', only: [:create]
  namespace :api do
    resources 'questions', only: [:create]
  end
end
