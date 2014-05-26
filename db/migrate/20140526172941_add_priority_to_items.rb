class AddPriorityToItems < ActiveRecord::Migration
  def change
    add_column :items, :priority, :integer, default: 0
  end
end
