Rails.application.routes.draw do
  resources :user_challenges, only: [:index, :show]
  resources :challenges
  resources :users

  # Play page
  get '/play', to: "play#play", as: "play"
  post"/result", to: "play#result", as: "result"

  # Session Controller
  get '/login', to: 'session#new', as: 'login'
  post '/login', to: 'session#create'
  delete '/login', to:'session#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
