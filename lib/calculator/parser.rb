#Parses the input
class Parser
  def initialize operation
    @operation= operation
  end

  def parse
    @operation.split(" ")
  end
end
