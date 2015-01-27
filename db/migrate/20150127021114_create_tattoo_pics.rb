class CreateTattooPics < ActiveRecord::Migration
  def change
    create_table :tattoo_pics do |t|
      t.integer :tattoo_id
      t.string :description
      t.string :url
      t.timestamps
    end
  end
end
