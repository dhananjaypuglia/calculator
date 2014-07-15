require 'spec_helper'
describe Command do
  context 'Not added to command history' do

    [AddCommand, SubtractCommand, MultiplyCommand, DivideCommand, NegCommand, AbsCommand, SqrCommand, SqrtCommand, CubeCommand, CubertCommand].each do |class_name|

      context 'commands history' do
        let(:history) { History.new }
        let(:calculator) { Calculator.new }
        let(:command) { class_name.new(1,calculator, history) }
        it 'should add command to commands history' do
          command.execute
          expect(history.command_history).to eq([command])
        end
      end
    end
  end

  context 'Not added to command history' do

    [ CancelCommand, NilCommand, RepeatCommand].each do |class_name|

      context 'commands history' do
        let(:history) { History.new }
        let(:calculator) { Calculator.new }
        let(:command) { class_name.new(calculator, history) }
        it 'should not add command to commands history' do
          command.execute
          expect(history.command_history.size).to eq(0)
        end
      end
    end
  end

  context "Equality checks" do
    [AddCommand, SubtractCommand, MultiplyCommand, DivideCommand, NegCommand, AbsCommand, SqrCommand, SqrtCommand, CubeCommand, CubertCommand].each do |command_name|
      let(:calculator) { Calculator.new }
      let(:history) { History.new }
      let(:command) do
        command_name.new(calculator, history)
      end
      it "should be equal for same object id" do
        expect(command).to eq(command)
      end

      it "should not be null" do
        expect(command).to_not eq(nil)
      end

      it "should not be equal for different type" do
        object = Object.new
        expect(command).to_not eq(object)
      end

      it "should have same hash code" do
        command1 = command_name.new(calculator, history)
        command2 = command_name.new(calculator, history)
        expect(command1.hash).to eq(command2.hash)
      end

      it "symmetric property" do
        command1 = command_name.new(calculator, history)
        command2 = command_name.new(calculator, history)
        expect(command1).to eq(command2) and expect(command2).to eq(command1)
      end

      it "transitive property" do
        command1 = command_name.new(calculator, history)
        command2 = command_name.new(calculator, history)
        command3 = command_name.new(calculator, history)
        expect(command1).to eq(command2) and expect(command2).to eq(command3) and expect(command3).to eq(command1)
      end
    end
  end

end