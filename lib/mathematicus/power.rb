class Power

  def self.of_2?(number)
    number.to_s(2).count('1') == 1
  end

end