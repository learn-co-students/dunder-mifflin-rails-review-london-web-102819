Rails.application.routes.draw do
  get '/dogs/sorted', to: "dogs#sort", as: :dogs_sort
  resources :dogs, only: [:show, :index]
  resources :employees, except: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
end
