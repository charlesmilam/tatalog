class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.string :nick
      t.string :email
      t.integer :shop_id
      t.string :url
      t.timestamps
    end
  end
end
