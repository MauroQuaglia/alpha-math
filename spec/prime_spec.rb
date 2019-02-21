require_relative '../lib/mathematicus/prime'

describe Prime do

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