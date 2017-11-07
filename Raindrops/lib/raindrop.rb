class Raindrop
  def initialize(num)
    @num = num
  end

  def raindrop
    return false if (@num.is_a? Numeric) != true
    return false if @num < 0
    fact = (1..@num).select { |n| (@num % n).zero? }

      if fact.include?(3) && fact.include?(5) && fact.include?(7)
        return 'PlingPlangPlong'
      elsif fact.include?(3) && fact.include?(5)
         return 'PlingPlang'
       elsif fact.include?(3) && fact.include?(7)
         return 'PlingPlong'
       elsif fact.include?(5) && fact.include?(7)
         return 'PlangPlong'
       elsif fact.include?(3)
         return 'Pling'
       elsif fact.include?(5)
        return 'Plang'
       elsif fact.include?(7)
        return 'Plong'
       else
         return @num
       end

  end
end
