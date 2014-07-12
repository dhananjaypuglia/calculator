require 'spec_helper'

describe Router do
  let(:router) { Router.new }
  it 'give 5 if input is add 5' do
    expect(Router.new.map Parser.new("add", 5)).to eq(5)
  end
  it 'give -5 if input is subtract 5' do
    expect(Router.new.map Parser.new("subtract", 5)).to eq(-5)
  end

  it 'give 0 if input is multiply 5' do
    expect(Router.new.map Parser.new("multiply", 5)).to eq(0)
  end

  it 'give 0 if input is divide 5' do
    expect(Router.new.map Parser.new("divide", 5)).to eq(0)
  end

  it 'give the square upon square command' do
    expect(Router.new.map Parser.new("sqr")).to eq(0)
  end

  it 'give the square root upon square root command' do
    expect(Router.new.map Parser.new("sqrt")).to eq(0)
  end

  it 'give the absolute value upon absolute command' do
    expect(Router.new.map Parser.new("abs")).to eq(0)
  end

  it 'give the negative value upon neg command' do
    expect(Router.new.map Parser.new("neg")).to eq(0)
  end

  it 'give the cube value upon cube command' do
    expect(Router.new.map Parser.new("cube")).to eq(0)
  end

  it 'give the cube root value upon cubert command' do
    expect(Router.new.map Parser.new("cubert")).to eq(0)
  end

  it 'give error if input is divide 0' do
    lambda { Router.new.map Parser.new("divide", 0) }.should raise_error
  end

  it 'give reset the total to zero when cancel is given' do
    expect(Router.new.map Parser.new("cancel")).to eq(0)
  end
  it 'should exit upon exit command' do
    expect(Kernel).to receive(:exit)
    Router.new.map Parser.new("exit")
  end

  context "Function mapping" do

    it "should call + function of calcultor" do
      parser = Parser.new("add", 5)
      expect(router.calculator).to receive(:+).with(5)
      router.map parser
    end
    it "should call - function of calcultor" do
      parser = Parser.new("subtract", 5)
      expect(router.calculator).to receive(:-).with(5)
      router.map parser
    end
    it "should call * function of calcultor" do
      parser = Parser.new("multiply", 5)
      expect(router.calculator).to receive(:*).with(5)
      router.map parser
    end
    it "should call / function of calcultor" do
      parser = Parser.new("divide", 5)
      expect(router.calculator).to receive(:/).with(5)
      router.map parser
    end
    it "should call sqr function of calcultor" do
      parser = Parser.new("sqr")
      expect(router.calculator).to receive(:sqr)
      router.map parser
    end
    it "should call sqrt function of calcultor" do
      parser = Parser.new("sqrt")
      expect(router.calculator).to receive(:sqrt)
      router.map parser
    end

    it "should call cube function of calcultor" do
      parser = Parser.new("cube")
      expect(router.calculator).to receive(:cube)
      router.map parser
    end

    it "should call cubert function of calcultor" do
      parser = Parser.new("cubert")
      expect(router.calculator).to receive(:cubert)
      router.map parser
    end

    it "should call abs function of calcultor" do
      parser = Parser.new("abs")
      expect(router.calculator).to receive(:abs)
      router.map parser
    end

    it "should call neg function of calcultor" do
      parser = Parser.new("neg")
      expect(router.calculator).to receive(:neg)
      router.map parser
    end
  end

end