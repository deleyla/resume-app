Rails.application.routes.draw do
  post 'student_token' => 'student_token#create'
  get "/students" => "students#index"
  post "/students" => "students#create"
  get "/students/show" => "students#show"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"
  
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
