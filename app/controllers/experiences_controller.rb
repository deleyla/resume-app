class ExperiencesController < ApplicationController
  def index
    experiences = Experience.all
    render json: experiences.as_json
  end

  def show
    experience = Experience.find_by(id: current_user.id)
    render json: experience.as_json
  end

  def create
    experience = Experience.new(
      student_id: current_user.id,
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details]
    )
    if experience.save
      render json: experience.as_json
    else
      render json: { errors: experience.errors.full_messages }
    end
  end

  def update
    experience = Experience.find_by(id: current_user.id)
    experience.start_date = params[:start_date]
    experience.end_date = params[:end_date]
    experience.job_title = params[:job_title]
    experience.company_name = params[:company_name]
    experience.details = params[:details]
    if experience.save
      render json: experience.as_json
    else
      render json: { errors: experience.errors.full_messages }
    end
  end

  def destroy
    experience = Experience.find_by(id: params[:id])
    experience.destroy

    render json: { message: 'Experience has been removed' }
  end
end
