class Digits

  def self.summer(number)
    return 0 if number == 0
    rest = number.divmod(9).last
    rest.zero? ? 9 : rest
  end

end