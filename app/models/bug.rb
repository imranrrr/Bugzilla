class Bug < ApplicationRecord

  enum type:   [:feature, :bug]
  enum status: [:started, :resolved, :completed]

  belongs_to   :project
  has_many     :bug_histories
  has_many     :users, through: :bug_histories



end
