Rails.application.routes.draw do
  resources :relationship_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :people do
    member do
      put :make_parent
      resources :relationships
    end
  end
end
