require 'pry'

class CashRegister

  attr_accessor :total, :title, :price, :last_item
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

    while quantity > 0
      @items << title
      quantity -=1
    end
  end

  def apply_discount
    if @discount > 0
      "After the discount, the total comes to $#{@total -= @discount * 10}."
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
    @items
  end

  def void_last_transaction(price, quantity = 1)
    @last_item = price * quantity
    @total -= @last_item
    @total = 0
  end


end
