Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :shops do
        get 'products', to: 'shops#products_of_this'
        
        get 'orders', to: 'shops#orders_of_this'

        resources :products do 
          get 'line_items', to: 'products#line_items_of_this'
        end

        resources :orders do
          get 'line_items', to: 'orders#line_items_of_this'
        end

      end
    end
  end
end