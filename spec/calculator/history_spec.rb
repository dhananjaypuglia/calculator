require 'spec_helper'

describe History do
  let(:calculator) {Calculator.new}
  let(:history) {History.new}
  it 'should push the command to history' do
    addcommand = AddCommand.new(2,calculator,history)
    addcommand.execute
    expect(history.command_history).to eq [addcommand]
  end
  it 'should pop the command from history' do
    addcommand = AddCommand.new(2,calculator,history)
    addcommand.execute
    expect(history.pop_history 1).to eq([addcommand])
  end
end