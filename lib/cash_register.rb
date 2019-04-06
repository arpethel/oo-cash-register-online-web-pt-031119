require 'pry'

class CashRegister

  attr_accessor :total, :title, :price, :discount


  def initialize(discount, total)
    @total = total
    @items = []
    @discount = discount.to_f/100.to_f
    binding.pry
  end

  def total
    @total
  end

  def add_item(title, price = 0)
    #increases the total price  X
    #also accepts an optional quantity
    #doesn't forget about the previous total
    # binding.pry

    @total += price
    @items << title
    # binding.pry
  end

  def apply_discount
    #the cash register was initialized with an employee discount applies the discount to the total price
    #the cash register was initialized with an employee discount returns success message with updated total
    #the cash register was initialized with an employee discount reduces the total
    #the cash register was not initialized with an employee discount returns a string error message that there is no discount to apply
    # binding.pry
    # binding.pry
    if @discount != 0 || @discount != nil
      @discount *= @total
      @total -= @discount
      @total
    else
      "There is no discount to apply!"
      @total
    end
    # binding.pry
  end

  def items
    #returns an array containing all items that have been added

  end

  def void_last_transaction
    #subtracts the last transaction from the total

  end


end
