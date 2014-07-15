#To execute subtact command
class SubtractCommand < Command
  def execute
    store
    @calculator.- @operand
  end

end