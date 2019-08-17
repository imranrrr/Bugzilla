class CreateBugHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :bug_histories do |t|

      t.belongs_to :user, index: true
      t.belongs_to :bug, index: true

      t.timestamps
    end
  end
end
