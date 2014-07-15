require 'spec_helper'
describe RepeatCommand do

  it 'should execute the repeat command' do
    history = History.new
    calculator = Calculator.new
    AddCommand.new( 2,calculator,history).execute
    SubtractCommand.new( 1,calculator,history).execute
    repeatcommand = RepeatCommand.new(2,calculator,history)
    expect(repeatcommand.execute).to eq 2
  end
end
