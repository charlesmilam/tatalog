class ChangeTableUsersAllowNullUsername < ActiveRecord::Migration
  def change
    change_column_null :users, :user_name, true
  end
end
