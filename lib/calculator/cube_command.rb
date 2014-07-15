#To execute cube command
  class CubeCommand < Command
  def execute
    store
    @calculator.cube
  end

end