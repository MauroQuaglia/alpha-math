class Prime

  def self.prime?(number)
    return false if number < 2
    (2..Math.sqrt(number).to_i).each do |divisor|
      return false if number.divmod(divisor).last.zero?
    end
  end

  def self.decomposition(number, factors = [])
    (2..Math.sqrt(number).to_i).each do |divisor|
      divmod = number.divmod(divisor)
      quotient, rest = divmod.first, divmod.last
      if rest.zero?
        factors << divisor
        decomposition(quotient, factors)
      end
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

end
