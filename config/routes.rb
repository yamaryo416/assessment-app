Rails.application.routes.draw do
  devise_for :therapists, controllers: {
    sessions: "therapists/sessions",
    registrations: "therapists/registrations"
  }

  devise_scope :therapist do
    root to: "therapists/sessions#new"
    get "/signup", to: "therapists/registrations#new"
    post "/login", to: "therapists/sessions#create"
    delete "/logout", to: "therapists/sessions#destroy"
  end

  namespace :admin do
    resources :therapists, only: [:index, :show, :destroy]
  end

  resources :patients do
    resources :rom_scales
    resources :mmt_scales
    resources :nrs_scales
    resources :mas_scales
    resources :tendon_reflex_scales
    resources :tactile_scales
    resources :bathyesthesia_scales
    resources :brs_scales
    resources :sias_scales
    resources :fact_scales
    resources :fbs_scales
    resources :bestest_scales
    resources :hdsr_scales
  end
end
