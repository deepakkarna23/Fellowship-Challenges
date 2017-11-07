class Change
  def initialize(amount)
    @amount = amount
  end

  def change
    return false if @amount < 0

    available_coins = [100,50,25,10,5,1]
    coins = []
    index = 0
    coin = available_coins[index]
    remaining_amount = @amount
    until remaining_amount == 0
      until remaining_amount >= coin
         index += 1
         coin = available_coins[index]
      end
      coins << coin
      remaining_amount -= coin
    end
    coins
  end
end
