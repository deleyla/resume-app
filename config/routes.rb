Rails.application.routes.draw do

  post 'student_token' => 'student_token#create'
  get "/students" => "students#index"
  post "/students" => "students#create"
  get "/students/show" => "students#show"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"

  get '/experiences' => 'experiences#index'
  get '/experiences/show' => 'experiences#show'
  post '/experiences' => 'experiences#create'
  patch '/experiences/:id' => 'experiences#update'
  delete '/experiences/:id' => 'experiences#destroy'

  get '/educations' => 'educations#index'
  get '/educations/show' => 'educations#show'
  post '/educations' => 'educations#create'
  patch '/educations/:id' => 'educations#update'
  delete '/educations/:id' => 'educations#destroy'

  # skills routes
  get '/skills' => 'skills#index'
  get '/skills/show' => 'skills#show'
  post '/skills' => 'skills#create'
  patch '/skills/:id' => 'skills#update'
  delete '/skills/:id' => 'skills#destroy'

  # capstone routes
  get '/capstones' => 'capstones#index'
  get '/capstones/show' => 'capstones#show'
  post '/capstones' => 'capstones#create'
  patch '/capstones/:id' => 'capstones#update'
  delete '/capstones/:id' => 'capstones#destroy'

end
