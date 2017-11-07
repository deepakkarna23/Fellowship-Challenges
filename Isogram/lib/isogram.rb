class Isogram
  def initialize(string)
    @string = string
  end

  def is_isogram
    if @string.downcase.chars.uniq == @string.downcase.chars
      return "isogram"
    else
      return "not isogram"
    end
  end
end
