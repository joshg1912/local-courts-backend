Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  post "/courts" => "courts#create"
  get "/courts" => "courts#index"
  get "/courts/:id" => "courts#show"
  patch "/courts/:id" => "courts#update"
  delete "/courts/:id" => "courts#destroy"
  get "/mycourts" => "courts#userindex"
end
