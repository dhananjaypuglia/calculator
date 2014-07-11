require 'spec_helper'

describe Router do
  it 'give 5 if input is add 5' do
    router = Router.new(Calculator.new,Parser.new(["add",5]))
    expect(router.map).to eq(5)

  end
  it 'give -5 if input is subtract 5' do
    router = Router.new(Calculator.new,Parser.new(["subtract",5]))
    expect(router.map).to eq(-5)
  end

  it 'give 0 if input is multiply 5' do
    router = Router.new(Calculator.new,Parser.new(["multiply",5]))
    expect(router.map).to eq(0)
  end

  it 'give 0 if input is divide 5' do
    router = Router.new(Calculator.new,Parser.new(["divide",5]))
    expect(router.map).to eq(0)
  end

  it 'give the square upon square command' do
    router = Router.new(Calculator.new(2),Parser.new(["sqr"]))
    expect(router.map).to eq(4)
  end

  it 'give the square root upon square root command' do
    router = Router.new(Calculator.new(4),Parser.new(["sqrt"]))
    expect(router.map).to eq(2)
  end

  it 'give the absolute value upon absolute command' do
    router = Router.new(Calculator.new(-2),Parser.new(["abs"]))
    expect(router.map).to eq(2)
  end

  it 'give the negative value upon neg command' do
    router = Router.new(Calculator.new(2),Parser.new(["neg"]))
    expect(router.map).to eq(-2)
  end

  it 'give the cube value upon cube command' do
    router = Router.new(Calculator.new(2),Parser.new(["cube"]))
    expect(router.map).to eq(8)
  end

  it 'give the cube root value upon absolute command' do
    router = Router.new(Calculator.new(8),Parser.new(["cubert"]))
    expect(router.map).to eq(2)
  end

  it 'give error if input is divide 0' do
    router = Router.new(Calculator.new,Parser.new(["divide",0]))
    lambda {router.map}.should raise_error
  end

  it 'give reset the total to zero when cancel is given' do
    router = Router.new(Calculator.new,Parser.new(["cancel"]))
    expect(router.map).to eq(0)
  end

end