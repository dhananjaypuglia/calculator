require 'spec_helper'
describe SqrtCommand do

  it 'should execute the sqrt command' do
    sqrtcommand = SqrtCommand.new(Calculator.new(4),History.new)
    expect(sqrtcommand.execute).to eq 2
  end
end