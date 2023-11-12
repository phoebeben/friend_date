class Day < ApplicationRecord
  belongs_to :user

  def available?
    if self.available == true
      'available'
    else
      'unavailable'
    end
  end
end
