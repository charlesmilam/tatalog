class CreateFaves < ActiveRecord::Migration
  def change
    create_table :faves do |t|
      t.belongs_to :user, index: true
      t.belongs_to :tattoo, index: true
      t.boolean :fave
      t.timestamps
    end
  end
end
