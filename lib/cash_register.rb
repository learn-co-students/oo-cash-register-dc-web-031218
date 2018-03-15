require "pry"

class CashRegister
  attr_accessor :discount, :total, :item, :last_transaction
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(item, price, quantity=1)
    quantity.times {@items << item}
    @total+=(price*quantity)
    @last_transaction = price
  end

  def apply_discount
    return "There is no discount to apply." if @discount == 0
    @total = @total * ((100 - @discount.to_f)/100)
    "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total-=last_transaction
  end
end

# dollar_store = CashRegister.new
# dollar_store.add_item("banana", 10, 4)
