Rails.application.routes.draw do
  resources :psicologos
  resources :pacientes

  get "up" => "rails/health#show", as: :rails_health_check
end
