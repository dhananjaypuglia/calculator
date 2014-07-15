# It does io operations
class InputOutput
  def initialize calculator , history
    @calculator = calculator
    @history = history
  end

  def get_input
   @command = Parser.new(@calculator,@history).parse Kernel.gets

  end

  def result
   @command.execute
  end

  def console
    while true
      get_input
      puts result
    end
  end
end