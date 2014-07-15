#To execute sqr command
class SqrCommand < Command
  def execute
    store
    @calculator.sqr
  end

end