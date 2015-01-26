class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.belongs_to :user, index: true
      t.belongs_to :tattoo, index: true
      t.boolean :favorite
      t.timestamps
    end
  end
end
