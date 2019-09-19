class Number

  def self.magnitude(value)
    return -Float::INFINITY if value == 0
    decimal, power = ("%e" % value.abs).split('e')
    decimal, power = Float(decimal), Integer(power)
    decimal < 5 ? power : power + 1
  end

end
