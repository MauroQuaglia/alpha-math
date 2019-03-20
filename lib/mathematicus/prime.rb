class Prime

  def self.prime?(number)
    return false if number < 2
    (2..Math.sqrt(number).to_i).each do |divisor|
      return false if number.divmod(divisor).last.zero?
    end
  end

  def self.decomposition(number, factors = [])
    break(print_decomposition(factors)) if number == 1
    (2..Math.sqrt(number).to_i).each do |divisor|
      divmod = number.divmod(divisor)
      quotient, rest = divmod.first, divmod.last
      if rest.zero?
        factors << divisor
        decomposition(quotient, factors)
      end
    end
  end

  def self.print_decomposition(factors)
    
  end

#Primes in numbers
end
