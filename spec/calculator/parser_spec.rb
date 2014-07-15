require 'spec_helper'

describe Parser do

  let(:calculator) { Calculator.new }
  let(:history) { History.new }

  it "should return the addcommand object " do
    expect(Parser.new(calculator, history).parse "add 5").to eq(AddCommand.new(5, calculator, history))
  end
  it "should return the subtractcommand object " do
    expect(Parser.new(calculator, history).parse "subtract 5").to eq(SubtractCommand.new(5, calculator, history))
  end
  it "should return the multiplycommand object " do
    expect(Parser.new(calculator, history).parse "multiply 5").to eq(MultiplyCommand.new(5, calculator, history))
  end
  it "should return the dividecommand object " do
    expect(Parser.new(calculator, history).parse "divide 5").to eq(DivideCommand.new(5, calculator, history))
  end

  it "should return the negcommand object " do
    expect(Parser.new(calculator, history).parse "neg").to eq(NegCommand.new(calculator, history))
  end

  it "should return the abscommand object " do
    expect(Parser.new(calculator, history).parse "abs").to eq(AbsCommand.new(calculator, history))
  end
  it "should return the sqrcommand object " do
    expect(Parser.new(calculator, history).parse "sqr").to eq(SqrCommand.new(calculator, history))
  end

  it "should return the sqrtcommand object " do
    expect(Parser.new(calculator, history).parse "sqrt").to eq(SqrtCommand.new(calculator, history))
  end

  it "should return the cubecommand object " do
    expect(Parser.new(calculator, history).parse "cube").to eq(CubeCommand.new(calculator, history))
  end

  it "should return the cubertcommand object " do
    expect(Parser.new(calculator, history).parse "cubert").to eq(CubertCommand.new(calculator, history))
  end

  it "should return the repeatcommand object " do
    expect(Parser.new(calculator, history).parse "repeat 2").to eq(RepeatCommand.new(2, calculator, history))
  end

  it "should return the cancelcommand object " do
    expect(Parser.new(calculator, history).parse "cancel").to eq(CancelCommand.new(calculator, history))
  end

  it "should return the exitcommand object " do
    expect(Parser.new(calculator, history).parse "exit").to eq(ExitCommand.new(calculator, history))
  end

  it "should return the nilcommand object " do
    expect(Parser.new(calculator, history).parse "random").to eq(NilCommand.new(calculator, history))
  end
end