Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end

  get 'home/index'
  root to: 'home#index'

  # get "tasks/index" これはいらない

  resources :tasks
  # resourcesはindex show new edit create update destroyのurlを自動で作成してくれるので2行はいらない
  
  root "tasks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end