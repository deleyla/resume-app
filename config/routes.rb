Rails.application.routes.draw do
  post 'student_token' => 'student_token#create'
  get "/students" => "students#index"
  post "/students" => "students#create"
  get "/students/show" => "students#show"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"
end
