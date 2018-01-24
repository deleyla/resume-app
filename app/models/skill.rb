class Skill < ApplicationRecord
  # belongs_to :student

  def as_json
    {
      id: id,
      skill_name: skill_name
    }
  end

end
