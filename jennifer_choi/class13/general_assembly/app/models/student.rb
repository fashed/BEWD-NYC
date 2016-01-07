class Student < ActiveRecord::Base
  belongs_to :course
  has_one :instructor, through: :course
  
  validates :name, presence: true
  validates :grade, numericality: { only_integer: true }
end
