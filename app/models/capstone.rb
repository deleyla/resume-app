class Capstone < ApplicationRecord
  def as_json
    {
      id: id,
      name: name,
      description: description,
      url: url,
      screenshot: screenshot
    }
  end
end
