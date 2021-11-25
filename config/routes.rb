Rails.application.routes.draw do
  namespace :worker do
    get 'top' => 'homes#top'
    resources :requests, only: [:new, :index, :show, :edit]
    patch 'requests/:id' => 'requests#update', as: 'update_request'
    post 'requests' => 'requests#create'
    delete 'requests/:id' => 'requests#destroy', as: 'destroy_request'
  end


  namespace :admin do
    get 'item_stocks' => 'item_stocks#index'
    get 'item_stocks/new'
    get 'item_stocks/:id' => 'item_stocks#show', as: 'item_stock'
    get 'item_stocks/:id/edit' => 'item_stocks#edit', as: 'edit_item_stock'
    patch 'item_stocks/:id' => 'item_stocks#update', as: 'update_item_stock'
    post 'item_stocks' => 'item_stocks#create'
    delete 'item_stocks/:id' => 'item_stocks#destroy', as: 'destroy_item_stock'
  end
  namespace :admin do
    get 'customers' => 'customers#index'
    get 'customers/:id/edit' => 'customers#edit', as: 'edit_customer'
    patch 'customers/:id' => 'customers#update', as: 'update_customer'
  end
  namespace :admin do
    get 'items/new'
    post 'items' => 'items#create'
    get 'items' => 'items#index'
    get 'items/:id' => 'items#show', as: 'item'
    get 'items/:id/edit' => 'items#edit', as: 'edit_item'
    patch 'items/:id' => 'items#update', as: 'update_item'
    delete 'items/:id' => 'items#destroy', as: 'destroy_item'
  end
  namespace :admin do
    get 'events/new'
    post 'events' => 'events#create'
    get 'events' => 'events#index'
    get 'events/:id' => 'events#show', as: 'event'
    get 'events/:id/edit' => 'events#edit', as: 'edit_event'
    patch 'events/:id' => 'events#update', as: 'update_event'
    delete 'events/:id' => 'events#destroy', as: 'destroy_event'
  end
  namespace :admin do
    get 'requests/index'
    get 'requests/show'
    get 'requests/edit'
  end
  namespace :admin do
    get 'workers' => 'workers#index'
    get 'workers/new'
    get 'workers/:id' => 'workers#show', as: 'worker'
    get 'workers/:id/edit' => 'workers#edit', as: 'edit_worker'
    patch 'workers/:id' => 'workers#update', as: 'update_worker'
    post 'workers' => 'workers#create'
  end
  namespace :admin do
    get 'venues/index'
    get 'venues/new'
    post 'venues' => 'venues#create'
    get 'venues/:id' => 'venues#show', as: 'venue'
    get 'venues/:id/edit' => 'venues#edit', as: 'edit_venue'
    patch 'venues/:id' => 'venues#update', as: 'update_venue'
    delete 'venues/:id' => 'venues#destroy', as: 'destroy_venue'
  end
  namespace :admin do
    get 'items/new'
    get 'items/index'
  end

  namespace :admin do
    get 'top' => 'homes#top', as: 'top'
  end
  devise_for :worker, skip: [:passwords] , controllers: {
    registrations: "worker/registrations",
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
