# It does io operations
class InputOutput
  def initialize value=0
    @router=Router.new
    @parser = Parser.new
  end

  def get_input
    @parser.parse(Kernel.gets.chomp)
  end

  def result
    @router.map get_input
  end

  def console
    while 1
      puts result
    end
  end
end