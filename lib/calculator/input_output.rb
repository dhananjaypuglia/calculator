# It does io operations
class InputOutput
  def initialize value=0
    @calculator=Calculator.new value
  end

  def get_input
    @parser=Parser.parse(Kernel.gets.chomp)
  end

  def self.calculator_exit
    Kernel.exit
  end

  def result
    Router.new(@calculator, @parser).map
  end

  def console
    while 1
      get_input
      puts result
    end
  end
end