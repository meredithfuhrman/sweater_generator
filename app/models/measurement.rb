class Measurement < ActiveRecord::Base
  has_many :sweaters

  validates_presence_of :name
  validates_presence_of :chest_circumference

  validates_numericality_of :chest_circumference, less_than_or_equal_to: 54
  validates_numericality_of :chest_circumference, greater_than_or_equal_to: 26
end
