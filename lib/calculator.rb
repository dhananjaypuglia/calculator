#Its runs the application
require_relative ('calculator/calculator.rb')
require_relative ('calculator/input_output.rb')
require_relative ('calculator/parser.rb')
require_relative ('calculator/parser.rb')
require_relative ('calculator/calculator.rb')
require_relative ('calculator/command.rb')
require_relative ('calculator/history.rb')
require_relative ('calculator/add_command.rb')
require_relative ('calculator/subtract_command.rb')
require_relative ('calculator/multiply_command.rb')
require_relative ('calculator/repeat_command.rb')
require_relative ('calculator/divide_command.rb')
require_relative ('calculator/cubert_command.rb')
require_relative ('calculator/sqrt_command.rb')
require_relative ('calculator/sqr_command.rb')
require_relative ('calculator/abs_command.rb')
require_relative ('calculator/cube_command.rb')
require_relative ('calculator/neg_command.rb')
require_relative ('calculator/cancel_command.rb')
require_relative ('calculator/nil_command.rb')
require_relative ('calculator/exit_command.rb')
class Application
  def initialize
    io=InputOutput.new(Calculator.new,History.new)
    io.console
  end
end
#Application.new