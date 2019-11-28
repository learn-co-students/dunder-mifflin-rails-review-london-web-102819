Rails.application.routes.draw do
  get "/dogs/loved", to: "dogs#loved", as:"best_loved"
  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
