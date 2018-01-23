class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students.as_json
  end

  def create
    student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      personal_blog_url: params[:personal_blog_url],
      online_resume_url: params[:online_resume_url],
      github_url: params[:github_url],
      photo: params[:photo],
      password_digest: params[:password_digest])
    student.save
    render json: student.as_json
  end

  def show
    student = Student.find_by(id: current_user.id)
    render json: student.as_json
  end

  def update
    student = Student.find_by(id: current_user.id)
      first_name = params[:first_name],
      last_name = params[:last_name],
      email = params[:email],
      phone_number = params[:phone_number],
      short_bio = params[:short_bio],
      linkedin_url = params[:linkedin_url],
      twitter_handle = params[:twitter_handle],
      personal_blog_url = params[:personal_blog_url],
      online_resume_url = params[:online_resume_url],
      github_url = params[:github_url],
      photo = params[:photo],
      password_digest = params[:password_digest]
    student.save
    render json: student.as_json
  end

  def destroy
    student = Student.find_by(id: current_user.id)
    student.destroy
    render json: {message: "Student successfully destroyed"}
  end
end


#current_user.id for show