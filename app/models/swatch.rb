class Swatch < ActiveRecord::Base
  belongs_to :yarn
  has_many :sweaters

  validates_presence_of :stitches_per_inch

  validates_numericality_of :stitches_per_inch, less_than_or_equal_to: 7
  validates_numericality_of :stitches_per_inch, greater_than_or_equal_to: 3

  validates_format_of :needle_size, with: (/\A[0-9.]*\z/)
end
