Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: %i[new create show]
  end
end
