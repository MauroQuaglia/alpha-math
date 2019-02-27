class Divisors

  def self.of(number)
    (1..number / 2).select {|divisor| number.divmod(divisor).last.zero?} << number
  end


end