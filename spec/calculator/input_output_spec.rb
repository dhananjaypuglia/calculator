require 'spec_helper'

describe InputOutput do
  let(:calculator) {Calculator.new}
  let(:history) {History.new}
  let(:input_output) do
    input_output = InputOutput.new(calculator,history)
  end

  it 'give 5 as result if input is add 5' do
    allow(Kernel).to receive(:gets).and_return("add 5")
    input_output.get_input
    expect(input_output.result).to eq(5)

  end


end