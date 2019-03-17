require 'pry'
class CashRegister
  attr_accessor :total, :discount, :item_list, :last_transaction
  
  def initialize(discount = 0)
    @discount = discount
    total = 0 
    @total = total
    item_list = []
    @item_list = item_list
    @last_transaction = last_transaction
  end
  
  def add_item(title, price, quantity = 1)
    last_transaction = []
    #binding.pry
    #last_transaction << self
    self.total += price * quantity
    quantity.times do 
      self.item_list << title
    end
  end
  
  def apply_discount
    if self.discount == 0
      return "There is no discount to apply."
    elsif self.discount == 20
      discount = self.discount / 100.0
      discount_amount = self.total * discount
      self.total = self.total - discount_amount
      return "After the discount, the total comes to $#{self.total.to_i}."
    end
  end
  
  def items
    self.item_list
  end
  
  def void_last_transaction
   self.add_item(title, price, quantity).last_transaction
   binding.pry
   self.total
  end
end
