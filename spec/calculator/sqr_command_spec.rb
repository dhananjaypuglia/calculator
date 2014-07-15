require 'spec_helper'
describe SqrCommand do

  it 'should execute the sqr command' do
    sqrcommand = SqrCommand.new(Calculator.new(2),History.new)
    expect(sqrcommand.execute).to eq 4
  end
end