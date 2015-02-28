class DropTableTattooPics < ActiveRecord::Migration
  def change
    drop_table :tattoo_pics
  end
end
