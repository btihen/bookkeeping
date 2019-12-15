Rails.application.routes.draw do
  namespace :sheets do
    resources :statements
    resources :sub_statements
    resources :statement_klasses
  end
end
