Rails.application.routes.draw do
  #root 'ask_simulators#index'
  resource 'ask_simulator', only: [:show, :destroy]
  resources 'questions', only: [:create]
  namespace :api do
    resources 'questions', only: [:create]
  end
end
