require 'pry'

class CashRegister

  attr_accessor :total, :title, :price #, :discount
  attr_reader :discount

  def initialize (discount = 0)
    @total = 0
    @items = []
    # @discount = discount.to_f/100.to_f
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    # @total += (price.to_f * quantity.to_f)
    @total += (price * quantity)
  end

  def apply_discount

    if @discount != 0 || @discount != nil
      @discount = discount.to_f/100.to_f
      @discount *= @total
      @total -= @discount
      # binding.pry
      "Your new total is $#{@total}."
    else
      "There is no discount to apply!"
      # @total
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
