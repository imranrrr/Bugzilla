class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :project_histories
  has_many :projects, through: :project_histories

  has_many :bug_histories
  has_many :bug, through: :bug_histories

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum user_type: {
    manager: 0,
    developer: 1,
    qa: 2
  }

end
