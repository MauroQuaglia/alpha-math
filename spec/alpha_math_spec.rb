require_relative '../lib/alpha_math'

describe AlphaMath do

  describe '.decomposition' do

    [2, 3, 5, 7, 11, 13, 17, 19].each do |value|
      it "#{value} should not be decomposed" do
        expect(described_class.decomposition(value)).to eq([value])
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
      expect(described_class.decomposition(20)).to eq([2, 2, 5])
    end

    it "221 should be decomposed" do
      expect(described_class.decomposition(221)).to eq([13, 17])
    end
  end

  describe '.digital_root' do
    it 'should be 0 for 0' do
      expect(described_class.digital_root(0)).to eq(0)
    end

    it 'should be 9 for multiple of 9' do
      [9, 18, 27].each do |value|
        expect(described_class.digital_root(value)).to eq(9)
      end
    end

    it 'should be n mod 9' do
      {1 => 1, 16 => 7, 101 => 2}.each_pair do |value, result|
        expect(described_class.digital_root(value)).to eq(result)
      end
    end
  end

  describe '.divisors_of' do
    it 'should return correct divisors' do
      expect(described_class.divisors_of(1)).to eq([1])
      expect(described_class.divisors_of(2)).to eq([1, 2])
      expect(described_class.divisors_of(3)).to eq([1, 3])
      expect(described_class.divisors_of(4)).to eq([1, 2, 4])
      expect(described_class.divisors_of(5)).to eq([1, 5])
      expect(described_class.divisors_of(6)).to eq([1, 2, 3, 6])
      expect(described_class.divisors_of(7)).to eq([1, 7])
      expect(described_class.divisors_of(8)).to eq([1, 2, 4, 8])
      expect(described_class.divisors_of(9)).to eq([1, 3, 9])
      expect(described_class.divisors_of(10)).to eq([1, 2, 5, 10])
    end
  end

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

  describe '.power_of_2?' do
    [0, 3, 5, 6, 7, 9, 10, 11, 12, 13, 14, 15, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31].each do |number|
      it "#{number} should not be a power of 2" do
        expect(described_class.power_of_2?(number)).to be_falsey
      end
    end

    [1, 2, 4, 8, 16, 32].each do |number|
      it "#{number} should be a power of 2" do
        expect(described_class.power_of_2?(number)).to be_truthy
      end
    end

    [-1, -2, -4].each do |number|
      it "#{number} should be a power of 2" do
        expect(described_class.power_of_2?(number)).to be_truthy
      end
    end

  end

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

  describe '.primorial' do
    it 'should be 2 for first prime number' do
      expect(described_class.primorial(1)).to eq(2)
    end

    it 'should be 6 for the two first prime number' do
      expect(described_class.primorial(2)).to eq(6)
    end

    it 'should be 30 for the third first prime number' do
      expect(described_class.primorial(3)).to eq(30)
    end

    it 'should be 210 for the fourth first prime number' do
      expect(described_class.primorial(4)).to eq(210)
    end

    it 'should be 2310 for the fiveth first prime number' do
      expect(described_class.primorial(5)).to eq(2310)
    end
  end

  describe '.trailing_zeros_of_factorial' do
    [0, 1, 2, 3, 4].each do |value|
      it "#{value} should not have trailing zeros" do
        expect(described_class.trailing_zeros_of_factorial(value)).to eq(0)
      end
    end

    [5, 6, 7, 8, 9].each do |value|
      it "#{value} have one trailing zero" do
        expect(described_class.trailing_zeros_of_factorial(value)).to eq(1)
      end
    end

    [10, 11, 12, 13, 14].each do |value|
      it "#{value} have two trailing zeros" do
        expect(described_class.trailing_zeros_of_factorial(value)).to eq(2)
      end
    end

    [15, 16, 17, 18, 19].each do |value|
      it "#{value} have three trailing zeros" do
        expect(described_class.trailing_zeros_of_factorial(value)).to eq(3)
      end
    end

    [20, 21, 22, 23, 24].each do |value|
      it "#{value} have four trailing zeros" do
        expect(described_class.trailing_zeros_of_factorial(value)).to eq(4)
      end
    end

    [25, 25, 27, 28, 29].each do |value|
      it "#{value} have six trailing zeros" do
        expect(described_class.trailing_zeros_of_factorial(value)).to eq(6)
      end
    end

    [30, 31, 32, 33, 34].each do |value|
      it "#{value} have seven trailing zeros" do
        expect(described_class.trailing_zeros_of_factorial(value)).to eq(7)
      end
    end

  end

end