require_relative '../lib/mathematicus/zeros'

describe Zeros do

  [0, 1, 2, 3, 4].each do |value|
    it "#{value} factorial should not have trailing zeros" do
      expect(described_class.factorial(value)).to eq(0)
    end
  end

  [5, 6, 7, 8, 9].each do |value|
    it "#{value} factorial have one trailing zero" do
      expect(described_class.factorial(value)).to eq(1)
    end
  end

  [10, 11, 12, 13, 14].each do |value|
    it "#{value} factorial have two trailing zeros" do
      expect(described_class.factorial(value)).to eq(2)
    end
  end

  [15, 16, 17, 18, 19].each do |value|
    it "#{value} factorial have three trailing zeros" do
      expect(described_class.factorial(value)).to eq(3)
    end
  end

  [20, 21, 22, 23, 24].each do |value|
    it "#{value} factorial have four trailing zeros" do
      expect(described_class.factorial(value)).to eq(4)
    end
  end

  [25, 25, 27, 28, 29].each do |value|
    it "#{value} factorial have four trailing zeros" do
      expect(described_class.factorial(value)).to eq(6)
    end
  end

  [30, 31, 32, 33, 34].each do |value|
    it "#{value} factorial have four trailing zeros" do
      expect(described_class.factorial(value)).to eq(7)
    end
  end

end