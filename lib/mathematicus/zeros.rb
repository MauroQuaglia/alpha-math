class Zeros

  def self.factorial(number)
    zeros, multiple = 0, 5
    while (count = number / multiple) != 0
      zeros += count
      multiple *= 5
    end
    zeros
  end

end