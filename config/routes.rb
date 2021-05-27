# frozen_string_literal: true

Rails.application.routes.draw do
  resources :contents do
    resources :dishes
  end

  root "contents#index"
end
