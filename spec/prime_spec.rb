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

    it "2 should be prime" do
      expect(described_class.prime?(4)).to be_truthy
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

    it "6 should be decomposed" do
      expect(described_class.decomposition(6)).to eq([2, 3])
    end

    it "8 should be decomposed" do
      expect(described_class.decomposition(8)).to eq([2, 2, 2])
    end

    it "9 should be decomposed" do
      expect(described_class.decomposition(9)).to eq([3, 3])
    end

    it "10 should be decomposed" do
      expect(described_class.decomposition(10)).to eq([2, 5])
    end

    it "12 should be decomposed" do
      expect(described_class.decomposition(12)).to eq([2, 2, 3])
    end

    it "14 should be decomposed" do
      expect(described_class.decomposition(14)).to eq([2, 7])
    end

    it "15 should be decomposed" do
      expect(described_class.decomposition(15)).to eq([3, 5])
    end

    it "16 should be decomposed" do
      expect(described_class.decomposition(16)).to eq([2, 2, 2, 2])
    end

    it "18 should be decomposed" do
      expect(described_class.decomposition(18)).to eq([2, 3, 3])
    end

    it "20 should be decomposed" do
      expect(described_class.decomposition(18)).to eq([2, 2, 5])
    end

    it "221 should be decomposed" do
      expect(described_class.decomposition(221)).to eq([13, 17])
    end

  end

end