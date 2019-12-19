Rails.application.routes.draw do
  namespace :chart do
    resources :accounts
    resources :account_sub_groups
    resources :account_groups
    resources :account_klasses
  end
  namespace :sheets do
    resources :statements
    resources :sub_statements
    resources :statement_klasses
  end
end
