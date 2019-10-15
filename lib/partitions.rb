class Partitions

  def enumerates(n)
    partitions = {}
    partitions[1] = [[1]]
    2.upto(n) do |value|
      partitions[value] = partition(value, partitions)
    end
    partitions[n]
  end

  def partition(n, previous)
    result = [[n]]
    (n - 1).downto(1) do |value|
      result.concat(sumfy(value, previous[n - value]))
    end
    result
  end

  def sumfy(number, partitions)
    result = []
    partitions.each do |partition|
      result << ([number] + partition) if (number >= partition.first)
    end
    result
  end

end


