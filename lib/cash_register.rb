require 'pry'

class CashRegister 

  attr_accessor :total

  def initialize
    binding.pry
    @total = 0
  end

  def total
    #returns current total
    
  end

  def add_item(title, price)
    #increases the total price
    #also accepts an optional quantity
    #doesn't forget about the previous total
    
  end

  def apply_discount
    #the cash register was initialized with an employee discount applies the discount to the total price
    #the cash register was initialized with an employee discount returns success message with updated total
    #the cash register was initialized with an employee discount reduces the total
    #the cash register was not initialized with an employee discount returns a string error message that there is no discount to apply
    
  end

  def items
    #returns an array containing all items that have been added
    
  end

  def void_last_transaction
    #subtracts the last transaction from the total
    
  end


end
