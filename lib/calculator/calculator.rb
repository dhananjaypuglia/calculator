#do the calculation in add,subtract,multiply,divide
class Calculator

  def initialize(value=0)
    @total=value
  end

  def +(value)
    @total = (@total+value).to_i
  end

  def -(value)
    @total = (@total-value).to_i
  end

  def *(value)
    @total = (@total*value).to_i
  end

  def /(value)
    @total = (@total/value).to_i
  end

  def abs
    @total = (@total.abs).to_i
  end

  def sqr
    @total=(@total**2).to_i
  end

  def sqrt
    @total=(Math.sqrt @total).to_i
  end

  def cube
    @total=(@total**3).to_i
  end

  def cubert
    @total=(@total**(1/3.0)).to_i
  end

  def neg
    @total = (@total*-1).to_i
  end

  def cancel
    @total=0
  end

end