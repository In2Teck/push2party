class AddPriorityToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :priority, :integer, default: 0
  end
end
