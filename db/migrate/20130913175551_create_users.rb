class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.integer :phone
      t.string :email
      t.boolean :subscribed

      t.timestamps
    end
  end
end
