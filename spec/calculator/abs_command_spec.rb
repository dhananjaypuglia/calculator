require 'spec_helper'
describe AbsCommand do

  it 'should execute the sqr command' do
    abscommand = AbsCommand.new(Calculator.new(-2),History.new)
    expect(abscommand.execute).to eq 2
  end
end