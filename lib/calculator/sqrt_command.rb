#To execute sqrt command
class SqrtCommand < Command
  def execute
    store
    @calculator.sqrt
  end

end