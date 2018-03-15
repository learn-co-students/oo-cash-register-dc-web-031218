
require 'pry'

class CashRegister

	#Constructor
	def initialize(discount = nil)
		@total = 0
		@discount = discount
		@items = []
		@last_trans
	end

	#Accessors
	attr_accessor :total, :last_trans
	attr_reader :items, :discount

	#Instance methods
	def add_item(item, price, q = 1)
		#Change total
		self.total += price*q
		self.last_trans = price*q
		q.times{self.items.push(item)}
	end

	def apply_discount
		self.total = self.total*((100.0 - self.discount)/100.0) if self.discount

		discount != nil ? 
		"After the discount, the total comes to $#{self.total.to_i}.": 
		"There is no discount to apply."
	end

	def void_last_transaction
		self.total = self.total - self.last_trans
	end


end

#binding.pry

puts "Arbitrary"

