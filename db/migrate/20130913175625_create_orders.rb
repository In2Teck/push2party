class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :data
      t.string :rp_id

      t.timestamps
    end
  end
end
