require "pry"
class CashRegister

  attr_accessor :total, :discount, :price, :items

#  @@items = [ ]
#  @@title = " "
#  @@quantity = 1

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @items = [ ]
    if self.add_item(title, price)
      @items << title
    else
      quantity.times { @items << title }
    end
    
    @total += price * quantity
  end

  def apply_discount
  #  binding.pry
    if @discount != 0
      decrease_by = (@total*@discount/100.0).to_i
      @total -= decrease_by
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    #binding.pry

    @items
  end


end
