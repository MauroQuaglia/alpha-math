require_relative '../lib/mathematicus/divisors'

describe Divisors do

  it 'should be the divisors' do
    expect(described_class.of(1)).to eq([1])
    expect(described_class.of(2)).to eq([1, 2])
    expect(described_class.of(3)).to eq([1, 3])
    expect(described_class.of(4)).to eq([1, 2, 4])
    expect(described_class.of(5)).to eq([1, 5])
    expect(described_class.of(6)).to eq([1, 2, 3, 6])
    expect(described_class.of(7)).to eq([1, 7])
    expect(described_class.of(8)).to eq([1, 2, 4, 8])
    expect(described_class.of(9)).to eq([1, 3, 9])
    expect(described_class.of(10)).to eq([1, 2, 5, 10])
  end

end