require 'pry'

class CashRegister
  attr_accessor :total
  attr_reader :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @ITEMS_array = []
  end

  def add_item(item_name, price, amount = 1)
    @total += price * amount
    num_items = amount
    while num_items > 0
      @ITEMS_array << item_name
      num_items -= 1
    end
    @last_price = price
  end

  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    end
    @total = total * (100 - discount)/100
    return "After the discount, the total comes to $#{self.total}."
  end

  def items
    # binding.pry
    @ITEMS_array
  end

  def void_last_transaction
    @total = total - @last_price
  end
end
