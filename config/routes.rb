Rails.application.routes.draw do
  resources :jokes, only: %i[index show]
end
