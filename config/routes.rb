Rails.application.routes.draw do
  # skills routes
  get '/skills' => 'skills#index'
  get '/skills/show' => 'skills#show'
  post '/skills' => 'skills#create'
  patch '/skills/:id' => 'skills#update'
  delete '/skills/:id' => 'skills#destroy'

  # capstone routes
  get '/capstone' => 'capstone#index'
  get '/capstone/show' => 'capstone#show'
  post '/capstone' => 'capstone#create'
  patch '/capstone/:id' => 'capstone#update'
  delete '/capstone/:id' => 'capstone#destroy'
end
