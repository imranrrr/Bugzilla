class ChangeColumnDefaultValueIn < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :user_type, from: false, to: 0
  end
end
