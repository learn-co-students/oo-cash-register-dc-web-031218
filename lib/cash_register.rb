class CashRegister
attr_accessor :discount, :total, :cart

def initialize(discount=0)
  @total = 0
  @discount = discount
  @cart = []
end

def add_item(title,price,quantity=1)
  self.total += price * quantity
  quantity.times {self.cart << title }

end

def apply_discount
  if discount==0
    "There is no discount to apply."
  else
   self.total -= self.total * discount / 100
   "After the discount, the total comes to $#{self.total}."
 end
end

def items
  self.cart
end

  def void_last_transaction
  self.total -= self.total
  end
end
