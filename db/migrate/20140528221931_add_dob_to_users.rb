class AddDobToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender, :date
  end
end
