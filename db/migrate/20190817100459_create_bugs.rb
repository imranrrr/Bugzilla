class CreateBugs < ActiveRecord::Migration[5.2]
  def change
    create_table :bugs do |t|

      t.string     :title, unique: true
      t.text       :description
      t.datetime   :deadline
      t.integer    :type
      t.integer    :status
      t.belongs_to :project, index: true
      t.timestamps
    end
  end
end
