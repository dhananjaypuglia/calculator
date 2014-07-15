#To execute mutiply command
class MultiplyCommand < Command
  def execute
    store
    @calculator.* @operand
  end
end