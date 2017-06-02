Rails.application.routes.draw do
  # Projects #
  resources :projects
  # Root #
  root "projects#index"
end
