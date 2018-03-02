Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "posts#index"
  post "/posts/:id/comments" => "comments#create"
  scope "(:locale)" do
    resources :posts
    get "/" => "posts#index"
  end
end
