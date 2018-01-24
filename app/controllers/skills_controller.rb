class SkillsController < ApplicationController
  def index 
    skills = Skill.all
    render json: skills.as_json
  end

  def show 
    skill = Skill.find_by(id: current_user.id)
    render json: skill.as_json
  end 

  def create
    student_skill = Skill.new(
      student_id: current_user.id,
      skill_name: params['name']
    )
    if student_skill.save
      render json: student_skill.as_json
    else 
      render json: {errors: student_skill.errors.full_messages}
  end

  def update
    student_skill = Skill.find_by(id: current_user.id)
    student_skill.skill_name = params[:skill_name]
    
    if student_skill.save
      render json: student_skill.as_json
    else
      render json: {errors: student_skill.errors.full_messages}
  end

  def destroy 
    the_id = params['id']
    skill = Skill.find_by(id: current_user.id)
    skill.destroy
    render json: {message: "You deleted a skill!"}
  end

end

