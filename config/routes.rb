Rails.application.routes.draw do
  devise_for :users
  
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :item, only: :show do 
        get "variant", to: "items#variant"
      end
    end
  end

  # root to: 'pages#home'
end
