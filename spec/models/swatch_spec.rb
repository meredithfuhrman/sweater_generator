require 'rails_helper'

RSpec.describe Swatch, type: :model do
  it { should belong_to(:yarn) }
  it { should have_many(:sweaters) }

  it { should validate_presence_of(:stitches_per_inch) }

  it { should validate_numericality_of(:stitches_per_inch) }

  it { should allow_value(/\A[0-9.]*\z/).for(:needle_size) }
end
