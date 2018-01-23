class SkillsController < ApplicationController
  def index  
    skill = Skill.all
    render json: skill.as_json
  end

  

  def show 
    skill = Skill.find_by(id: current_user.id)
    render json: skill.as_json
  end 

  def create
    skill = Skill.new(
      skill_name: params['name']
    )
    skill.save
    render json: skill.as_json
    
  end

  def update
    student_skill = Skill.find_by(id: current_user.id)
    student_skill.skill_name = params[:skill_name]
    
    skill.save
    render json: skill.as_json
  end

  def destroy 
    the_id = params['id']
    skill = Skill.find_by(id: current_user.id)
    skill.destroy
    render json: {message: "You deleted a skill!"}
  end

end

