class CashRegister
  # ::new
  #     sets an instance variable @total on initialization to zero
  #     optionally takes an employee discount on initialization
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  attr_accessor :discount, :total
  attr_reader :items

  #   #total
  #     returns the current total

  #add_item
#     accepts a title and a price and increases the total
#     also accepts an optional quantity
#     doesn't forget about the previous total
  def add_item(title, price, quantity=1)
    @previous_total = @total
    quantity.times do |i|
      @items.push(title)
    end

    @total += (price * quantity)
  end

  #   #apply_discount
  #     the cash register was initialized with an employee discount
  #       applies the discount to the total price
  #       returns success message with updated total
  #       reduces the total
  #     the cash register was not initialized with an employee discount
  #       returns a string error message that there is no discount to apply

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = (@total.to_f - (@total * (@discount.to_f / 100))).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end


  #   #items
  #     returns an array containing all items that have been added




  #   #void_last_transaction
  #     subtracts the last transaction from the total
  def void_last_transaction
    @total = @previous_total
  end

end
