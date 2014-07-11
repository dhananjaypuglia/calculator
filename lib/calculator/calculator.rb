#do the calculation in add,subtract,multiply,divide
class Calculator

  def initialize(value=0)
    @total=value
  end
  def +(value)
    @total+=value
  end

  def -(value)
    @total-=value
  end

  def *(value)
    @total*=value
  end

  def /(value)
    @total/=value
  end

  def abs
    @total.abs
  end

  def sqr
    @total**2
  end

  def sqrt
    Math.sqrt @total
  end

  def cube
    @total**3
  end

  def cubert
    @total**(1/3.0)
  end

  def neg
    @total*-1
  end

  def cancel
    @total=0
  end

end