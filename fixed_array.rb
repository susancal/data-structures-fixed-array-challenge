class FixedArray
  attr_reader :arr

  def initialize(size)
    @arr = Array.new(size)
  end

  def get(index)
    if index <= (@arr.length-1)
      return @arr[index]
    else
      raise OutOfBoundException
    end
  end

  def set(index, element)
    if index <= (@arr.length-1)
      @arr[index] = element
    else
      raise OutOfBoundException
    end
  end

end

f = FixedArray.new(5)
f.set(3, "check")
f.set(2, "check")
p f.arr
