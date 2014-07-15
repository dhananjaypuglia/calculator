require 'spec_helper'

describe SubtractCommand do

  it 'should execute the subtract command' do
    subtractcommand = SubtractCommand.new( 2,Calculator.new,History.new)
    expect(subtractcommand.execute).to eq -2
  end
end