require_relative '../lib/mathematicus/number'

describe Number do

  describe '.magnitude' do

    it 'should be 0 for 0' do
      # La potenza di 10 più vicina sarebbe 10^-1 ma non avrebbe molto senso.
      expect(described_class.magnitude(0)).to eq(0)
    end

    it 'should be 0 (10^0)' do
      [1, 2, 3, 4].each do |value|
        expect(described_class.magnitude(value)).to eq(0)
      end
    end

    it 'should be 1 (10^1)' do
      [5, 6, 7, 8, 9].each do |value|
        expect(described_class.magnitude(value)).to eq(1)
      end
    end

  end

end

# 1 = 1 * 10^0