require 'spec_helper'
describe CancelCommand do

  it 'should execute the cancel command' do
    cancelcommand = CancelCommand.new(Calculator.new,History.new)
    expect(cancelcommand.execute).to eq 0
  end
end