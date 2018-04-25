require 'box'

describe Box do
  let(:box) { described_class.new }

  describe '#create_top' do
    it 'prints out the top part of a box according to the width provided' do
      expect { box.create_top(3) }.to output("┌ - ┐\n").to_stdout
    end
  end

  describe '#create_middle' do
    it 'prints out the middle part of a box according to the width provided' do
      expect { box.create_middle(3) }.to output("│   │\n").to_stdout
    end
  end

  describe '#create_bottom' do
    it 'prints out the bottom part of a box according to the width provided' do
      expect { box.create_bottom(3) }.to output('└ - ┘').to_stdout
    end
  end

  describe '#create_box' do
    it 'prints a complete box with a height of 3 and any width' do
      expect { box.create_box(3) }.to output("┌ - ┐\n│   │\n└ - ┘").to_stdout
    end
  end
end
