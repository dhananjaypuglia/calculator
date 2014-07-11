require 'spec_helper'

describe Router do
  let(:router) do
    router = Router.new(Calculator.new)
  end
  it 'give 5 if input is add 5' do
    expect(router.map(["add","5"])).to eq(5)

  end
  it 'give -5 if input is subtract 5' do
    expect(router.map(["subtract","5"])).to eq(-5)
  end

  it 'give 0 if input is multiply 5' do
    expect(router.map(["multiply","5"])).to eq(0)
  end

  it 'give 0 if input is divide 5' do
    expect(router.map(["divide","5"])).to eq(0)
  end

  it 'give the square upon square command' do
    router = Router.new(Calculator.new 2)
    expect(router.map(["sqr"])).to eq(4)
  end

  it 'give the square root upon square root command' do
    router = Router.new(Calculator.new 4)
    expect(router.map(["sqrt"])).to eq(2)
  end

  it 'give the absolute value upon absolute command' do
    router = Router.new(Calculator.new -2)
    expect(router.map(["abs"])).to eq(2)
  end

  it 'give the negative value upon neg command' do
    router = Router.new(Calculator.new 2)
    expect(router.map(["neg"])).to eq(-2)
  end

  it 'give the cube value upon cube command' do
    router = Router.new(Calculator.new 2)
    expect(router.map(["cube"])).to eq(8)
  end

  it 'give the cube root value upon absolute command' do
    router = Router.new(Calculator.new 8)
    expect(router.map(["cubert"])).to eq(2)
  end

  it 'give error if input is divide 0' do
    lambda {router.map(["divide","0"])}.should raise_error
  end

  it 'give reset the total to zero when cancel is given' do
    expect(router.map(["cancel"])).to eq(0)
  end

end