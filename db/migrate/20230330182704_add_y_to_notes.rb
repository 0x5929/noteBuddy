class AddYToNotes < ActiveRecord::Migration[7.0]
  def change
    add_column :notes, :y, :integer, default: 0  
  end
end
