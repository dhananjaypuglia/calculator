#Its should maps to the specified operations
class Router
  def initialize(calculator, parser)
    @calculator = calculator
    @parser = parser
  end

  def map
    case @parser.operator
      when "add"
        @calculator.+ @parser.operand
      when "subtract"
        @calculator.- @parser.operand
      when "multiply"
        @calculator.* @parser.operand
      when "divide"
        @calculator./ @parser.operand
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
        InputOutput.calculator_exit
    end
  end
end