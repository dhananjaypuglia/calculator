#Its should maps to the specified operations
class Router
  attr_reader :calculator
  def initialize
    @calculator = Calculator.new
  end

  def calculator_exit
    Kernel.exit
  end

  def map parser
    case parser.operator
      when "add"
        @calculator.+ parser.operand
      when "subtract"
        @calculator.- parser.operand
      when "multiply"
        @calculator.* parser.operand
      when "divide"
        @calculator./ parser.operand
      when "abs"
        @calculator.abs
      when "sqr"
        @calculator.sqr
      when "sqrt"
        @calculator.sqrt
      when "cube"
        @calculator.cube
      when "neg"
        @calculator.neg
      when "cubert"
        @calculator.cubert
      when "cancel"
        @calculator.cancel
      when "exit"
        calculator_exit
      else
        "Incorrect Command"
    end
  end
end