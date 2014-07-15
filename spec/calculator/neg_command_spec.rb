require 'spec_helper'
describe NegCommand do

  it 'should execute the neg command' do
    negcommand = NegCommand.new(Calculator.new(2),History.new)
    expect(negcommand.execute).to eq -2
  end
end
