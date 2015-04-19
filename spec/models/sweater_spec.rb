require 'rails_helper'

RSpec.describe Sweater, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:swatch) }
  it { should belong_to(:measurement) }
  it { should belong_to(:pattern) }

  it { should validate_presence_of(:user) }
  it { should validate_presence_of(:swatch) }
  it { should validate_presence_of(:measurement) }
  it { should validate_presence_of(:pattern) }
end
