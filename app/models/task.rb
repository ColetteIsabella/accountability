class Task < ActiveRecord::Base
  validates :assignment, presence: true
  has_many :assignments, dependent: :destroy
  has_many :points
end
