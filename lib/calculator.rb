#Its runs the application
require_relative ('calculator/calculator.rb')
require_relative ('calculator/input_output.rb')
require_relative ('calculator/parser.rb')
require_relative ('calculator/router.rb')
class Application
  def initialize
    io=InputOutput.new
    io.console
  end
end