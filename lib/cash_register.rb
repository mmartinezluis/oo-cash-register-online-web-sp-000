require "pry"
class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = [ ]
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 0)

    if quantity == 0
      @items << title
      @total += price * (quantity + 1)
    else
      quantity.times { @items << title }
      @total += price * quantity
    end
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
    @items
  end


end
