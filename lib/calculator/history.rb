#It stores the operation history
class History
  attr_reader :command_history
  def initialize
    @command_history=[]
  end

  def push_history command
    @command_history.push (command)
  end

  def pop_history value
    @command_history.pop (value)
  end
end