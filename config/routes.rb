Rails.application.routes.draw do
  get '/experiences' => 'experiences#index'
  get '/experiences/:id' => 'experiences#show'
  post '/experiences' => 'experiences#create'
  patch '/experiences/:id' => 'experiences#update'
  delete '/experiences/:id' => 'experiences#destroy'

  get '/educations' => 'educations#index'
  get '/educations/:id' => 'educations#show'
  post '/educations' => 'educations#create'
  patch '/educations/:id' => 'educations#update'
  delete '/educations/:id' => 'educations#destroy'
end
