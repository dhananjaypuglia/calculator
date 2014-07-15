#To execute cancel command
class CancelCommand < Command
  def execute
    @calculator.cancel
  end

end