require 'rails_helper'

RSpec.describe Measurement, type: :model do
  it { should have_many(:sweaters) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:chest_circumference) }

  it { should validate_numericality_of(:chest_circumference) }
end
