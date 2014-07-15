#To execute exit command
class ExitCommand < Command
  def execute
   Kernel.exit
  end

end