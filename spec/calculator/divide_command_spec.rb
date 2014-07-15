require 'spec_helper'
describe DivideCommand do

  it 'should execute the divide command' do
    dividecommand = DivideCommand.new( 2,Calculator.new(2),History.new)
    expect(dividecommand.execute).to eq 1
  end
end