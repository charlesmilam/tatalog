class ChangeTableTattoos < ActiveRecord::Migration
  def change
    change_column :tattoos, :when, :date
  end
end
