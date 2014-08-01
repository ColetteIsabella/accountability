class Task < ActiveRecord::Base
  validates :assignment, presence: true
  has_many :assignments, dependent: :destroy
  accepts_nested_attributes_for :assignments
end
