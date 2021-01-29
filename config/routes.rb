Rails.application.routes.draw do
  resources :contents do
    resources :dishes do
      resource :recipe
    end
  end
  
  root 'contents#index'
end
