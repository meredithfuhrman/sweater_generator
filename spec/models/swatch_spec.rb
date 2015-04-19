require 'rails_helper'

RSpec.describe Swatch, type: :model do
  it { should belong_to(:yarn) }
  it { should have_many(:sweaters) }

  it { should validate_presence_of(:stitches_per_inch) }

  it { should validate_numericality_of(:stitches_per_inch).is_greater_than_or_equal_to(3) }
  it { should validate_numericality_of(:stitches_per_inch).is_less_than_or_equal_to(7) }

  it { should allow_value('10.5').for(:needle_size) }
  it { should_not allow_value('ABC').for(:needle_size) }
end
