class SimpleArray
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def first
  	data[0]
  end

  def last
  	data[-1]
  end

  def join(separator='')
  	data * separator
  end
  
  def count
  	data.size
  end

end

arr = SimpleArray.new(["a", "b", "c"])
p arr.first
p arr.last
p arr.join
p arr.join('-')
p arr.join("3")
p arr.join(3)
p arr.data
p arr.count
arr1 = SimpleArray.new([])
p arr1.count