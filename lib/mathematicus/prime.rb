class Prime

  def self.prime?(number)
    return false if number < 2
    (2..Math.sqrt(number).to_i).each do |divisor|
      return false if number.divmod(divisor).last.zero?
    end
  end

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

  def self.print_decomposition(factors)
    map = factors.uniq.map {|factor| [factor, factors.count(factor)]}.to_h
    result = ''
    map.each do |k, v|
      result << (v == 1 ? "(#{k})" : "(#{k}**#{v})")
    end
    result
  end

end
