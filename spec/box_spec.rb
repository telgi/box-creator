require 'box'

describe Box do
  let(:box) { described_class.new }

  describe '#create_top' do
    it 'prints out the top part of a box' do
      expect { box.create_top }.to output('┌ ┐').to_stdout
    end
  end
end
