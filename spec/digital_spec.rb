require_relative '../lib/mathematicus/digital'

describe Digital do

  it 'should be 0 for 0' do
    expect(described_class.root(0)).to eq(0)
  end

  it 'should be 9 for multiple of 9' do
    [9, 18, 27].each do |value|
      expect(described_class.root(value)).to eq(9)
    end
  end

  it 'should be n mod 9' do
    {1 => 1, 16 => 7, 101 => 2}.each_pair do |value, result|
      expect(described_class.root(value)).to eq(result)
    end
  end

end