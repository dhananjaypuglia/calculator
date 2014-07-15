require 'spec_helper'
describe NilCommand do

  it 'should execute the divide command' do
    nilcommand = NilCommand.new(Calculator.new(2),History.new)
    expect(nilcommand.execute).to eq "Invalid Command"
  end
end