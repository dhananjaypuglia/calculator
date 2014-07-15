#To execute cubert command
class CubertCommand < Command
  def execute
    store
    @calculator.cubert
  end

end