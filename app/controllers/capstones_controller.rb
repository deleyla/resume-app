class CapstonesController < ApplicationController
  def index 
    capstone = Capstone.all
    render json: capstone.as_json
  end

  def show 
    capstone = Capstone.find_by(id: current_user.id)
    render json: capstone.as_json
  end 

  def create
    capstone = Capstone.new(
      student_id: current_user.id,
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot]
    )
    if capstone.save
      render json: capstone.as_json
    else
      render json: {errors: capstone.errors.full_messages}
    end
  end

  def update
    student_capstone = Capstone.find_by(id: current_user.id)
    student_capstone.name = params[:name],
    student_capstone.description = params[:description],
    student_capstone.url = params[:url],
    student_capstone.screenshot = params[:screenshot],
    
    if student_capstone.save
      render json: student_capstone.as_json
    else
      render json: {errors: student_capstone.errors.full_messages}
    end
  end

  def destroy 
    capstone = Capstone.find_by(id: current_user.id)
    capstone.destroy
    render json: {message: "You deleted a Capstone!"}
  end
end
