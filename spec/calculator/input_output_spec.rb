require 'spec_helper'

describe InputOutput do
  let(:input_output) do
    input_output = InputOutput.new
  end
  it 'should parse the input' do
    allow(Kernel).to receive(:gets).and_return("add 5")
    expect(input_output.get_input).to eq(["add","5"])
  end

  it 'should exit upon exit command' do
    expect(Kernel).to receive(:exit)
    InputOutput.calculator_exit
  end

  it 'give 5 as result if input is add 5' do
    allow(Kernel).to receive(:gets).and_return("add 5")
    expect(input_output.result(input_output.get_input)).to eq(5)

  end


end