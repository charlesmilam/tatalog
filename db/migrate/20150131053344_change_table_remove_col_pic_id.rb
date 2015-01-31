class ChangeTableRemoveColPicId < ActiveRecord::Migration
  def change
    remove_column :tattoos, :pic_id
  end
end
