Rails.application.routes.draw do
  root 'api/v1/contacts#welcome'
  # purpose of namespace: in the browser the path will be api/v1/contacts
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :contacts
    end
  end
end
