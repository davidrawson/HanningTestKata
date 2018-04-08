class Hamming

  def self.compute (strand1, strand2)
    hammingCounter = 0
    array1 = strand1.split(//)
    array2 = strand2.split(//)

    if array1.size != array2.size
      raise(ArgumentError)
      return
    end

    array1.each_with_index  do |element, index|
      if element != array2[index]
        hammingCounter += 1
      end
    end
    return hammingCounter
  end

end
