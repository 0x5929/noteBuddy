class AddXToNotes < ActiveRecord::Migration[7.0]
  def change
    add_column :notes, :x, :integer, default: 0  
  end
end
