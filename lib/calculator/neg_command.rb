#To execute neg command
class NegCommand < Command
  def execute
    store
    @calculator.neg
  end

end