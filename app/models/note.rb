class Note < ApplicationRecord
  belongs_to :project

  def completed?
    self.completed
  end 
end
