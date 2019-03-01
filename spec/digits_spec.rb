require_relative '../lib/mathematicus/digits'

describe Digits do

  it 'digital roots for number with ine chiper' do
    {0 => 0, 1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7, 8 => 8, 9 => 9}.each_pair do |k, v|
      expect(described_class.summer(k)).to eq(v)
    end
  end

  it 'digital roots for number with two chiper' do
    {10 => 1, 11 => 2, 12 => 3, 13 => 4, 14 => 5, 15 => 6, 16 => 7, 17 => 8, 18 => 9, 19 => 1}.each_pair do |k, v|
      expect(described_class.summer(k)).to eq(v)
    end
  end

end