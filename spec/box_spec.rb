require 'box'

describe Box do
  let(:box) { described_class.new }

  describe '#create_top' do
    it 'prints out the top part of a box' do
      expect { box.create_top }.to output("┌ ┐\n").to_stdout
    end
  end

  describe '#create_bottom' do
    it 'prints out the bottom part of a box' do
      expect { box.create_bottom }.to output('└ ┘').to_stdout
    end
  end

  describe '#create_box' do
    it 'prints a complete box' do
      expect { box.create_box }.to output("┌ ┐\n└ ┘").to_stdout
    end
  end
end
