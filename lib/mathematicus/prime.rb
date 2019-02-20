class Prime

  def self.prime?(number)
    return false if number == 0 or number == 1

    limit = Math.sqrt(number).to_i
    return true if limit < 3


  end

end