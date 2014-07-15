#To execute divide command
class DivideCommand < Command
  def execute
    store
    @calculator./ @operand
  end

end