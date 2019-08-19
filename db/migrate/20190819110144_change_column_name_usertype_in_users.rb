class ChangeColumnNameUsertypeInUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :usertype, :user_type
  end
end
