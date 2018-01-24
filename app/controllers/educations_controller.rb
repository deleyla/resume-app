class EducationsController < ApplicationController
  def index
      educations = Education.all
      render json: educations.as_json
    else
      render json: {}
    end
  end

  def show
    education = Education.find_by(id: current_user.id)
    render json: education.as_json
  end

  def create
    education = Education.new(
      student_id: current_user.id,
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details]
    )
    if education.save
      render json: education.as_json
    else
      render json: education.errors.full_messages
    end
  end

  def update
    education = Education.find_by(id: current_user.id)
    education.start_date = params[:start_date]
    education.end_date = params[:end_date]
    education.degree = params[:degree]
    education.university_name = params[:university_name]
    education.details = params[:details]
    if education.save
      render json: education.as_json
    else
      render json: education.errors.full_messages
    end
  end

  def destroy
    education = Education.find_by(id: params[:id])
    education.destroy
  end
end
