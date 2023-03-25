class AddCompletedToNotes < ActiveRecord::Migration[7.0]
  def change
    add_column :notes, :completed, :boolean
  end
end
