Rails.application.routes.draw do
  get 'movieshows/index'
  get 'movieshows/show'
  get 'movieshows/search'
  root 'movieshows#index'
  get 'movieshows/new'
  devise_for :users
  resources :movies
  get 'search/create'

=begin
  get "/movies" index
  post "/movies/new" create
  delete "/movies/:id" delete
  get "/movies/:id" show
  get "/movies/new" new
  get "/movies/:id/edit" edit
  patch "/movies/:id" update
  put "/movies/:id" update
=end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
