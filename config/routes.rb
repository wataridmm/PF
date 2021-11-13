Rails.application.routes.draw do
  namespace :admin do
    get 'homes/top'
  end
  devise_for :worker, skip: [:registrations, :passwords] , controllers: {
    sessions: "worker/sessions"
  }
  devise_for :publics, skip: [:passwords] ,controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
