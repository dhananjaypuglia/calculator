# It does io operations
class InputOutput
  def initialize calculator
    @calculator = calculator
  end

  def get_input
    Parser.new(Kernel.gets.chomp)
  end

  def result
    router = Router.new @calculator
    router.map get_input
  end

  def console
    while 1
      puts result
    end
  end
end