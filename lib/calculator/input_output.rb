# It does io operations
class InputOutput
  def initialize value=0
    @calculator=Calculator.new value
  end

  def get_input
    Parser.new(Kernel.gets.chomp).parse
  end

  def self.calculator_exit
    Kernel.exit
  end

  def result command
    Router.new(@calculator).map(command)
  end
end