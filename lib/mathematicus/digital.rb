class Digital

  def self.root(number)
    return 0 if number.zero?
    rest = number.divmod(9).last
    rest.zero? ? 9 : rest
  end

end