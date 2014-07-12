#Parses the input
class Parser
  attr_reader :operator, :operand

  def initialize (operator =nil, operand=nil)
    @operator, @operand =operator, operand
  end

  def ==(other)
    return true if self.equal?(other)
    return false if other.nil?
    return false if other.class != self.class
    @operator == other.operator && @operand == other.operand
  end

  def hash
    @operator.hash*37 + @operand.hash*37
  end

  def eql? other
    self == other
  end

  def parse operation
    @operator, @operand = operation.split
    @operand =@operand.to_i unless @operand.nil?
    self
  end
end
