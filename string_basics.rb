class SimpleString
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def length
    data.size
  end

  def end_with?(letters)
    letters.to_s
    index = letters.to_s.size
    if data[-index] == letters.to_s
      true
    else
      false
    end
  end

  def upcase
    data.chars.map do |char|
      char =~ /\A[a-z]\z/ ? (char.ord - 32).chr : char
    end.join
  end

  def + (string)
    self.data.chars.push(string.data.chars).join
  end
end
