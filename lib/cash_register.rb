require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  attr_reader

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity=1)
    # *** Solution
    self.total += amount * quantity
    quantity.times do
      items << title
    end
    self.last_transaction = amount * quantity
    # *** End of Solution
    # **this is a ternary version: simplified if/else statement
    # if discount == 0
    #   self.total += title
    # else
    #   self.total += (title * discount)
    # end
    # title = amount
    # self.total += (discount == 0 ? title : (title * discount))
  end

  def apply_discount
    # Solution
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end
