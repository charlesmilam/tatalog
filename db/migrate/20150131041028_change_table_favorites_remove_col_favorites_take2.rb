class ChangeTableFavoritesRemoveColFavoritesTake2 < ActiveRecord::Migration
  def change
    remove_column :favorites, :favorite
  end
end
