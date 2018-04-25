require 'box'

describe Box do
  let(:box) { described_class.new }

  describe '#create_top' do
    it 'prints out top part of box according to width provided' do
      expect { box.create_top(4) }.to output("┌    -    -    ┐\n").to_stdout
    end
  end

  describe '#create_middle' do
    it 'prints out middle part of box according to width and height provided' do
      expect { box.create_middle(3, 3) }.to output("\n│         │\n\n").to_stdout
    end
  end

  describe '#create_bottom' do
    it 'prints out bottom part of box according to width provided' do
      expect { box.create_bottom(4) }.to output('└    -    -    ┘').to_stdout
    end
  end

  describe '#create_box' do
    it 'prints a complete box according to width and height provided' do
      box_art = "┌    -    -    ┐\n\n│              │\n\n│              │\n\n└    -    -    ┘"
      expect { box.create(4, 4) }.to output(box_art).to_stdout
    end

    it 'does not allow dimensions less than 2x2' do
      box_too_small = "You must select dimensions that are greater than or equal to 2x2"
      expect { box.create(1, 1) }.to raise_error(box_too_small)
    end

    it 'only allows integers to be passed through for width and height' do
      not_integers = "You must select dimensions with whole numbers"
      expect { box.create(3.7, 4.8) }.to raise_error(not_integers)
    end
  end
end
