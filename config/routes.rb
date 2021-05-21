Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :dogs, only: [:index, :show]
  resources :employees, only: [:index, :show, :new, :edit, :create, :update]

end
