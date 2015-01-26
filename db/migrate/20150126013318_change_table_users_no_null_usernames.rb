class ChangeTableUsersNoNullUsernames < ActiveRecord::Migration
  def change
    change_column_null :users, :user_name, false
  end
end
