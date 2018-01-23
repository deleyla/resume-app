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
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot]
    )
    capstone.save
    render json: capstone.as_json
    
  end

  def update
    student_capstone = Capstone.find_by(id: current_user.id)
    student_capstone.name = params[:name],
    student_capstone.description = params[:description],
    student_capstone.url = params[:url],
    student_capstone.screenshot = params[:screenshot],
    
    capstone.save
    render json: capstone.as_json
  end

  def destroy 
    capstone = Capstone.find_by(id: current_user.id)
    capstone.destroy
    render json: {message: "You deleted a Capstone!"}
  end
end
