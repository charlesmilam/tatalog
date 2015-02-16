class ChangeTableTattoosAddColumnForPaperClip < ActiveRecord::Migration
  def change
    add_attachment :tattoos, :image
  end
end
