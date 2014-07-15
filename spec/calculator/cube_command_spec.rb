require 'spec_helper'
describe CubeCommand do

  it 'should execute the cube command' do
    cubecommand = CubeCommand.new(Calculator.new(2),History.new)
    expect(cubecommand.execute).to eq 8
  end
end
