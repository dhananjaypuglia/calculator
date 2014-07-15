#Its should maps to the specified operations
class Command
  attr_reader :operand
  def initialize operand=0,calculator,history
    @operand = operand
    @calculator = calculator
    @history = history
  end
def ==(other)
    return true if self.equal?(other)
    return false if other.nil?
    return false if other.class != self.class
    @operand== other.operand
end

def hash
    37*(@operand.hash)
end

def eql? other
  self == other
end
  def execute
    raise("Command class not to be instantiated")
  end
  def store
    @history.push_history self
  end
end