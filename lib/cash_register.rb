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
    @items << title.uniq
  end

  def apply_discount
    @total = @total - @discount * 10
    # binding.pry
    if @discount > 0
      "After the discount, the total comes to $#{@total}"
    else
      "There is no discount to apply."
    end

    # if @discount > 0
    #   @discount = discount.to_f/100.to_f
    #   @discount *= @total
    #   @total -= @discount
    #   # binding.pry
    #   "Your new total is $#{@total}."
    # else
    #   "There is no discount to apply!"
    #   # @total
    # end
    # # binding.pry
  end

  def items
    #returns an array containing all items that have been added
    @items.uniq
    # binding.pry
  end

  def void_last_transaction
    #subtracts the last transaction from the total

  end


end
