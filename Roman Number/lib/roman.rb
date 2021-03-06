class Roman
  def initialize(number)
    @number = number
  end

  def to_roman
    result = ""

    return false if (@number.is_a? Numeric) != true
    return false if @number < 0
    roman_mapping.keys.each do |d|
      q, m = @number.divmod(d)
      result << roman_mapping[d] * q
      @number = m
    end
    return true
  end

  private

  def roman_mapping
    {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }
  end
end
