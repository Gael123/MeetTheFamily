Rails.application.routes.draw do
  resources :relationship_types

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :people, only: [:index, :show, :new, :create] do
    resources :relationships
   end
end
