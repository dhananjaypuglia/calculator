require 'spec_helper'
describe AddCommand do

  it 'should execute the add command' do
    addcommand = AddCommand.new( 2,Calculator.new,History.new)
    expect(addcommand.execute).to eq 2
  end
end