#To execute abs command
class AbsCommand < Command
  def execute
    store
    @calculator.abs
  end

end