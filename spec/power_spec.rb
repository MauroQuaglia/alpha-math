require_relative '../lib/mathematicus/power'

describe Power do

  [0, 3, 5, 6, 7, 9, 10, 11, 12, 13, 14, 15, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31].each do |value|
    it "#{value} should not be a power of 2" do
      expect(described_class.of_2?(value)).to be_falsey
    end
  end

  [1, 2, 4, 8, 16, 32].each do |value|
    it "#{value} should be a power of 2" do
      expect(described_class.of_2?(value)).to be_truthy
    end
  end

end