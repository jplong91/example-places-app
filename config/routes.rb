Rails.application.routes.draw do
  namespace :v1 do
    get "/places" => "places#index"
    post "/places" => "places#create"
  end
end
