Rails.application.routes.draw do
  get '/index' =>'posts#index'
  get '/top' => 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/posts' =>'posts#create'
  get '/posts/:id' => 'posts#show', as: 'post'
  get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'
  delete '/posts/:id' => 'posts#destroy', as: 'destroy_post'
end
