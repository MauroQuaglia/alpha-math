require_relative '../lib/mathematicus/prime'

describe Prime do

  describe '.prime?' do

    [-1, 0].each do |value|
      it "#{value} should not be prime" do
        expect(described_class.prime?(value)).to be_falsey
      end
    end

    [1, 4, 6, 8, 9, 10].each do |value|
      it "#{value} should not be prime" do
        expect(described_class.prime?(value)).to be_falsey
      end
    end

    [2, 3, 5, 7].each do |value|
      it "#{value} should be prime" do
        expect(described_class.prime?(value)).to be_truthy
      end
    end

  end

  describe '.decomposition' do

    [2, 3, 5, 7, 11, 13, 17, 19].each do |value|
      it "#{value} should not be decomposed" do
        expect(described_class.decomposition(value)).to eq("(#{value})")
      end
    end

    it "4 should be decomposed" do
      expect(described_class.decomposition(4)).to eq([2, 2])
    end

  end

end