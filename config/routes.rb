Rails.application.routes.draw do
  resources :agendas
  resources :psicologos
  resources :pacientes

  get "up" => "rails/health#show", as: :rails_health_check
end
