class Project < ApplicationRecord
  belongs_to :user
  has_many :notes

  def completed?
    completed = true
    notes = Note.where(project_id: self.id)
    
    notes.each_with_index do |val, indx|
      unless val.completed?
        completed = false
        break
      end
    end
    completed
  end 
end
