require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount=20, total=0)
    @total = total
    @discount = discount
    @items = []
    #@most_recent_item = most_recent_item
  end

  def add_item(title, price, quantity=1)
    @total += (price * quantity)
    quantity.times do |item|
      @items << title
    end
  end

  def apply_discount
    percent_off = @discount.to_f/100
    discount_amt = @total = @total - (@total * percent_off)
    if discount_amt > 0
      "After the discount, the total comes to $#{discount_amt.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @total
    #bnding.pry
  end
    # subtract most recent transaction from @total
    #last_transaction = @items[-1]
    #@total -= #@total #last_transaction
    #binding.pry

end
