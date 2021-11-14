Rails.application.routes.draw do

  namespace :admin do
    get 'events/index'
    get 'events/new'
    get 'events/show'
    get 'events/edit'
  end
  namespace :admin do
    get 'requests/index'
    get 'requests/show'
    get 'requests/edit'
  end
  namespace :admin do
    get 'workers/index'
    get 'workers/new'
    get 'workers/show'
    get 'workers/edit'
  end
  namespace :admin do
    get 'venues/index'
    get 'venues/new'
    post 'venues' => 'venues#create'
    get 'venues/:id' => 'venues#show', as: 'venue'
    get 'venues/:id/edit' => 'venues#edit', as: 'edit_venue'
    patch 'venues/:id' => 'venues#update', as: 'update_venue'
  end
  namespace :admin do
    get 'items/new'
    get 'items/index'
  end

  namespace :admin do
    get 'top' => 'homes#top', as: 'top'
  end
  devise_for :worker, skip: [:registrations, :passwords] , controllers: {
    sessions: "worker/sessions"
  }

  devise_for :customers, skip: [:passwords] ,controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  scope module: :public do
    root 'customers#top'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
