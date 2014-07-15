require 'spec_helper'
describe CubertCommand do

  it 'should execute the cubert command' do
    cubertcommand = CubertCommand.new(Calculator.new(8),History.new)
    expect(cubertcommand.execute).to eq 2
  end
end