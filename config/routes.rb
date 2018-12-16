Rails.application.routes.draw do
  devise_for :users
  # get "tasks/index" これはいらない

  resources :tasks do
    collection do
      delete :destroy_all
    end
  end
  # resourcesはindex show new edit create update destroyのurlを自動で作成してくれるので2行はいらない
  
  root "tasks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
