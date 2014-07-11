#Its should maps to the specified operations
class Router
  def initialize(calculator)
    @calculator=calculator
  end
  def map command
    operation, value=[command[0], command[1].to_i]
    case operation
      when "add"
        total = @calculator.+ value
      when "subtract"
        total = @calculator.- value
      when "multiply"
        total = @calculator.* value
      when "divide"
        total = @calculator./ value
      when "abs"
        total = @calculator.abs
      when "sqr"
        total = @calculator.sqr
      when "sqrt"
        total = @calculator.sqrt
      when "cube"
        total = @calculator.cube
      when "neg"
        total = @calculator.neg
      when "cubert"
        total = @calculator.cubert
      when "cancel"
        total = @calculator.cancel
      when "exit"
        InputOutput.calculator_exit
    end
  end
end