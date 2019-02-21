class Prime

  def self.prime?(number)
    return false if number < 2
    (2..Math.sqrt(number).to_i).each do |divisor|
      return false if number.divmod(divisor).last.zero?
    end
  end

end