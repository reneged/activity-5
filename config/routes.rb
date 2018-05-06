Rails.application.routes.draw do
  resources :mobiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'mobiles/decrement_stock/:id' => 'mobiles#decrement_stock'
  
end
