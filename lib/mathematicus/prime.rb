class Prime

  def self.prime?(number)
    return false if number < 2
    (2..Math.sqrt(number).to_i).each do |divisor|
      return false if number.divmod(divisor).last.zero?
    end
  end

  def self.decomposition(number, factors = [])
    return factors if number == 1
    (2..Math.sqrt(number).to_i).each do |divisor|
      factors << divisor if number.divmod(divisor).last.zero?
      decomposition(number.divmod(divisor).first, factors)
    end
  end

end


#Primes in numbers
#
# xample: n = 86240 should return "(2**5)(5)(7**2)(11)"