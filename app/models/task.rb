class Task < ActiveRecord::Base
  validates :assignment, presence: true

end
