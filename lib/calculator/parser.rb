#Parses the input
class Parser
  attr_reader :operator, :operand

  def initialize operator
    @operator= operator[0]
    @operand =operator[1].to_i unless operator[1].nil?
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

  def self.parse operation
    Parser.new(operation.split(" "))
  end
end
