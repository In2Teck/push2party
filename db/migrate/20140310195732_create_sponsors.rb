class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :image_url
      t.boolean :active

      t.timestamps
    end
  end
end
