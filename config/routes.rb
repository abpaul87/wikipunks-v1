Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cryptopunks, only: %i[index show] do
    resources :bios, only: [:edit, :update]
  end
  resources :traits, only: %i[index show]
end