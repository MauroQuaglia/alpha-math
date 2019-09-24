module AlphaMath

  def self.decomposition(number, factors = [])
    return factors if number == 1
    (2..number).each do |divisor|
      divmod = number.divmod(divisor)
      quotient, rest = divmod.first, divmod.last
      if rest.zero?
        factors << divisor
        return decomposition(quotient, factors)
      end
    end
  end

  def self.digital_root(number)
    return 0 if number == 0
    rest = number.divmod(9).last
    rest == 0 ? 9 : rest
  end

  def self.divisors_of(number)
    (1..number / 2).select {|divisor| number.divmod(divisor).last.zero?} << number
  end

  def self.magnitude(number)
    return -Float::INFINITY if number == 0
    decimal, power = ("%e" % number.abs).split('e')
    decimal, power = Float(decimal), Integer(power)
    decimal < 5 ? power : power + 1
  end

  def self.power_of_2?(number)
    number.to_s(2).count('1') == 1
  end

  def self.prime?(number)
    return false if number < 2
    (2..Math.sqrt(number).to_i).each do |divisor|
      return false if number.divmod(divisor).last.zero?
    end
  end

  def self.primorial(number)
    primes = []
    (2...Float::INFINITY).each do |value|
      if primes.count < number
        primes << value if prime?(value)
      else
        return primes.inject(:*)
      end
    end
  end

  def self.trailing_zeros_of_factorial(number)
    zeros, multiple = 0, 5
    while (count = number / multiple) != 0
      zeros += count
      multiple *= 5
    end
    zeros
  end


end