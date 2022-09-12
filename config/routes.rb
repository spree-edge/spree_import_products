Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :import_logs, only: [:index, :show] do
      get :import_sample, on: :collection
    end
    resources :products do
      post :import, on: :collection
    end
  end
end
