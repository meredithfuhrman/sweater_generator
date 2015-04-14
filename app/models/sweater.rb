class Sweater < ActiveRecord::Base
  belongs_to :user
  has_one :swatch
  has_one :measurement
  has_one :pattern

  validates_presence_of :user_id
  validates_presence_of :pattern_id
  validates_presence_of :swatch_id
  validates_presence_of :measurement_id
end
