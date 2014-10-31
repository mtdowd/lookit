require "monban/constraints/signed_in"
require "monban/constraints/signed_out"

Rails.application.routes.draw do
  constraints Monban::Constraints::SignedIn.new do
    root "dashboards#show", as: :dashboard
  end

  constraints Monban::Constraints::SignedOut.new do
    root "home#show", as: :home
  end

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  resources :messages, only: [:create]

  root to: "dashboards#show"

end
