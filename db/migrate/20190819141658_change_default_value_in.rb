class ChangeDefaultValueIn < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :user_type, :usertype, :integer

  end
end
