require 'rails_helper'

RSpec.describe Measurement, type: :model do
  it { should have_many(:sweaters) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:chest_circumference) }

  it { should validate_numericality_of(:chest_circumference).even }
  it { should validate_numericality_of(:chest_circumference).is_greater_than_or_equal_to(26) }
  it { should validate_numericality_of(:chest_circumference).is_less_than_or_equal_to(54) }
end
