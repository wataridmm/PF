Rails.application.routes.draw do
  devise_for :workers, controllers: {
    sessions: "worker/sessions"
  }
  devise_for :publics, controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
  devise_for :admin, controllers: {
    sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
