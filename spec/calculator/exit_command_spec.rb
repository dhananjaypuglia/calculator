require 'spec_helper'
describe ExitCommand do

  it 'should execute the exit command' do
    exitcommand = ExitCommand.new(Calculator.new(2),History.new)
    allow(Kernel).to receive(:exit)
    exitcommand.execute
  end
end