Rails.application.routes.draw do
  root "articles#index"

  # get "/articles", to: "articles#index"
  # now we will show a single article by calling it through the pramaeter(id) and with the new show action on articlescontroller
  #get "/articles/:id", to: "articles#show"
  resources :articles do
    resources :comments
  end
end
