class Capstone < ApplicationRecord
  # belongs_to :student

  def as_json
    {
      name: name,
      description: description,
      url: url,
      screenshot: screenshot
    }
  end
end
