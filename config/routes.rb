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

  resources :patients
end
