Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/create_by_csv', to: 'netflixes#create_by_csv'
      resources :netflixes, only: [ :index ]
    end
  end
end
