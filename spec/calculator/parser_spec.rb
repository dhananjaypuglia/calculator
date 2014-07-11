require 'spec_helper'

describe Parser do

  it 'return ["add",5] for "add 5"' do
    io_parser = Parser.new "add 5"
    expect(io_parser.parse).to eq(["add", "5"])
  end
end