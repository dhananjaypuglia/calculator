require 'spec_helper'

describe Calculator do
  let (:calculator) do
    calculator = Calculator.new
  end
  let (:io_parser) do
    io_parser = InputOutput.new
  end
  it 'give 5 if input is add 5' do
    expect(calculator.+ 5).to eq(5)
  end

  it 'give -5 if input is subtract 5' do
    expect(calculator.- 5).to eq(-5)
  end

  it 'give 0 if input is multiply 5' do
    expect(calculator*5).to eq(0)
  end

  it 'give 0 if input is divide 5' do
    expect(calculator./ 5).to eq(0)
  end

  it 'give error if input is divide 0' do
    lambda { calculator./ 0 }.should raise_error
  end

  it 'give 2 as the absolute value of -2' do
    calculator=Calculator.new(-2)
    expect(calculator.abs).to eq(2)
  end

  it 'gives 4 as square of 2' do
    calculator=Calculator.new(2)
    expect(calculator.sqr).to eq(4)
  end

  it 'gives 2 as square root of 4' do
    calculator=Calculator.new(4)
    expect(calculator.sqrt).to eq(2)
  end

  it 'gives 8 as cube of 2' do
    calculator=Calculator.new(2)
    expect(calculator.cube).to eq(8)
  end

  it 'gives 2 as cuberoot of 8' do
    calculator=Calculator.new(8)
    expect(calculator.cubert).to eq(2)
  end

  it 'gives -2 as neg of 2' do
    calculator=Calculator.new(2)
    expect(calculator.neg).to eq(-2)
  end
end