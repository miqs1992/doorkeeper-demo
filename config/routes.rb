# frozen_string_literal: true

Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :auth do
      resources :workspaces, only: :show
    end
  end
end
