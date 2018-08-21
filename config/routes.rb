Rails.application.routes.draw do
  resources :user_challenges
  resources :challenges
  resources :users
  get '/play', to: "play#play", as: "play"
  post"/result", to: "play#result", as: "result"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
