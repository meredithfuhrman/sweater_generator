class Pattern < ActiveRecord::Base
  has_many :sweaters

  validates_presence_of :pattern_type
end
