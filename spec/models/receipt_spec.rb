require 'rails_helper'

describe Receipt do
  it { should have_many(:purchases) }
end
