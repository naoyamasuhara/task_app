Rails.application.routes.draw do
  # get "tasks/index" これはいらない

  resources :tasks
  # resourcesはindex show new edit create update destroyのurlを自動で作成してくれるので2行はいらない
  
  root "tasks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
