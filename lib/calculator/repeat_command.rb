#Executes the recent commands
class RepeatCommand < Command
  def execute
    repeat_operation = @history.pop_history(@operand)
    @total=0
    repeat_operation.each { |command| @total=command.execute }
    @total
  end
end