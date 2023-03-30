class AddCompletedDefaultToNotes < ActiveRecord::Migration[7.0]
  def change
    change_column_default :notes, :completed, false
  end
end
