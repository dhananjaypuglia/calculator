require 'spec_helper'

describe MultiplyCommand do

  it 'should execute the multiply command' do
    multiplycommand = MultiplyCommand.new( 2,Calculator.new(1),History.new)
    expect(multiplycommand.execute).to eq 2
  end
end