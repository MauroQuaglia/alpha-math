require_relative '../lib/mathematicus/prime'

describe Prime do

  it 'should return false' do
    expect(described_class.prime?(0)).to be_falsey
    expect(described_class.prime?(1)).to be_falsey
    expect(described_class.prime?(2)).to be_truthy
    expect(described_class.prime?(3)).to be_truthy
  end

end