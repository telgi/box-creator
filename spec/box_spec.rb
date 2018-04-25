require 'box'

describe Box do
  let(:box) { described_class.new }

  describe '#create_top' do
    it 'prints out the top part of a box according to the width provided' do
      expect { box.create_top(4) }.to output("┌    -    -    ┐\n").to_stdout
    end
  end

  describe '#create_middle' do
    it 'prints out the middle part of a box according to the width and height provided' do
      expect { box.create_middle(3, 3) }.to output("\n│         │\n\n").to_stdout
    end
  end

  describe '#create_bottom' do
    it 'prints out the bottom part of a box according to the width provided' do
      expect { box.create_bottom(4) }.to output('└    -    -    ┘').to_stdout
    end
  end

  describe '#create_box' do
    it 'prints a complete box according to width and height provided' do
      expect { box.create(4, 4) }.to output("┌    -    -    ┐\n\n│              │\n\n│              │\n\n└    -    -    ┘").to_stdout
    end

    it 'does not allow dimensions less than 2x2' do
      expect { box.create(1, 1) }.to output("You must select dimensions that are greater than or equal to 2x2\n").to_stdout
    end

    it 'does only allows integers to be passed through as arguments for width and height' do
      expect { box.create(3.7, 4.8) }.to output("You must select dimensions with whole numbers\n").to_stdout
    end
  end
end
