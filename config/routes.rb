Rails.application.routes.draw do
  get 'produit/index'
  get 'produit/show'
  root to: 'produit#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
