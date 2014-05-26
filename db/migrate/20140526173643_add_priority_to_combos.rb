class AddPriorityToCombos < ActiveRecord::Migration
  def change
    add_column :combos, :priority, :integer, default: 0 
  end
end
