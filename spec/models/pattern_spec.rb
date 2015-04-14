require 'rails_helper'

RSpec.describe Pattern, type: :model do
  it { should have_many(:sweaters) }

  it { should validate_presence_of(:pattern_type) }
end
