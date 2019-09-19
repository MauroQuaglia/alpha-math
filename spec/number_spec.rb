require_relative '../lib/mathematicus/number'

describe Number do

  describe '.magnitude' do

    it 'should be -infinity for 0' do
      expect(described_class.magnitude(0)).to eq(-Float::INFINITY)
    end

    it 'should be -3' do
      [0.0005, 0.001, 0.0049].each do |value|
        expect(described_class.magnitude(value)).to eq(-3)
      end
    end

    it 'should be -2' do
      [0.005, 0.01, 0.049].each do |value|
        expect(described_class.magnitude(value)).to eq(-2)
      end
    end

    it 'should be -1' do
      [0.05, 0.1, 0.49].each do |value|
        expect(described_class.magnitude(value)).to eq(-1)
      end
    end

    it 'should be 0' do
      [0.5, 1, 4.9].each do |value|
        expect(described_class.magnitude(value)).to eq(0)
      end
    end

    it 'should be 1' do
      [5, 10, 49].each do |value|
        expect(described_class.magnitude(value)).to eq(1)
      end
    end

    it 'should be 2' do
      [50, 100, 449].each do |value|
        expect(described_class.magnitude(value)).to eq(2)
      end
    end

    it 'should be valid when negative' do
      expect(described_class.magnitude(-1000)).to eq(3)
    end

  end

end

