require 'spec_helper'

describe InputOutput do
  let(:input_output) do
    input_output = InputOutput.new
  end
  it 'should parse the input' do
    allow(Kernel).to receive(:gets).and_return("add 5")
    expect(input_output.get_input).to eq(Parser.new("add", 5))
  end


  it 'give 5 as result if input is add 5' do
    allow(Kernel).to receive(:gets).and_return("add 5")
    input_output.get_input
    expect(input_output.result).to eq(5)

  end


end