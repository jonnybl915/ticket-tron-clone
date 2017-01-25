class Issue < ActiveRecord::Base
  # def reporter_id
  #   ...
  # end
  # def reporter
  #   User.find reporter_id
  # end

  belongs_to :reporter, class_name: 'User'
  belongs_to :assignee, class_name: 'Developer'

  has_many :comments

  has_many :followers
  has_many :users, through: :followers
end
