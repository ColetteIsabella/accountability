class Task < ActiveRecord::Base
  validates :assignment, presence: true,
  validates :points, numericality: { :equal_to 0, .5, 1}

end
