Rails.application.routes.draw do
  namespace :admin do
    resources :categories
  end
  devise_for :admins
  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

    root "home#index"

    authenticated :admin_user do
      root to: "admin#index", as: :admin_root
    end
    get "admin" => "admin#index"
end
