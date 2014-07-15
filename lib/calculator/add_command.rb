#To execute add command
class AddCommand < Command
  def execute
    store
    @calculator.+ @operand
  end
end