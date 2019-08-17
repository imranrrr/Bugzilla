class Project < ApplicationRecord

  has_many :project_histories
  has_many :users, through: :project_histories
  has_many :bugs
end
