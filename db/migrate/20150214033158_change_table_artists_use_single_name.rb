class ChangeTableArtistsUseSingleName < ActiveRecord::Migration
  def change
    remove_column :artists, :first_name
    remove_column :artists, :last_name
    add_column  :artists, :name, :string
  end
end
