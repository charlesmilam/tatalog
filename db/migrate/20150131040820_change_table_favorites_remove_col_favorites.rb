class ChangeTableFavoritesRemoveColFavorites < ActiveRecord::Migration
  def change
    remove_column :favorites, :favorites
  end
end
