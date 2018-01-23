class Skill < ApplicationRecord
  def as_json
    {
      id: id,
      skill_name: skill_name
    }
  end

end
