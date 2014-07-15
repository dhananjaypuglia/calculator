#Parses the input
class Parser

  def initialize (calculator, history)
    @calculator = calculator
    @history = history
  end

  def parse operation
    @operator, @operand = operation.split
    @operand = @operand.to_i unless @operand.nil?
    map
  end

  def map
    case @operator
      when "add"
        AddCommand.new(@operand, @calculator, @history)
      when "subtract"
        SubtractCommand.new(@operand, @calculator, @history)
      when "multiply"
        MultiplyCommand.new(@operand, @calculator, @history)
      when "divide"
        DivideCommand.new(@operand, @calculator, @history)
      when "abs"
        AbsCommand.new(@calculator, @history)
      when "sqr"
        SqrCommand.new(@calculator, @history)
      when "sqrt"
        SqrtCommand.new(@calculator, @history)
      when "cube"
        CubeCommand.new(@calculator, @history)
      when "neg"
        NegCommand.new(@calculator, @history)
      when "cubert"
        CubertCommand.new(@calculator, @history)
      when "cancel"
        CancelCommand.new(@calculator, @history)
      when "exit"
        ExitCommand.new(@calculator, @history)
      when "repeat"
        RepeatCommand.new(@operand, @calculator, @history)
      else
        NilCommand.new(@calculator, @history)
    end
  end
end
