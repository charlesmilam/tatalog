class CreateTattoos < ActiveRecord::Migration
  def change
    create_table :tattoos do |t|
      t.integer :user_id
      t.string :name
      t.integer :artist_id
      t.datetime :when
      t.integer :shop_id
      t.text :why
      t.integer :pic_id
      t.timestamps
    end
  end
end
