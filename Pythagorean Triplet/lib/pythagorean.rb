class Pythagorean
  def initialize(num)
    @num = num
  end

  def find_triplet
    return false if (@num.is_a? Numeric) != true
    return false if @num > 1000

    for a in (1..@num)
      for b in (a..@num)
        for c in (b..@num)
          if a**2 + b**2 == c**2 and a+b+c == 1000
            puts a*b*c
          end
        end
      end
    end
  end
end
