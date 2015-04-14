require 'rails_helper'

RSpec.describe Sweater, type: :model do
  it { should belong_to(:user) }
  it { should have_one(:swatch) }
  it { should have_one(:measurement) }
  it { should have_one(:pattern) }

  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:swatch_id) }
  it { should validate_presence_of(:measurement_id) }
  it { should validate_presence_of(:pattern_id) }
end
