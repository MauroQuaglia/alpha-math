class Digital

  def self.root(number)
    return 0 if number == 0
    rest = number.divmod(9).last
    rest == 0 ? 9 : rest
  end

end