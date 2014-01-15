require './lib/stack'
describe Stack do
  let(:stack) { Stack.new }
  describe 'insertion' do
    context 'when empty' do
      it 'adds the value to the list' do
        stack.push 1
        expect(stack.to_a).to eq [1]
      end
    end

    context 'with many elements' do
      it 'adds value to the front of the list' do
        stack.push 1
        stack.push 2
        expect(stack.to_a).to eq [2,1]
      end
    end
  end

  describe 'removal' do
    context 'many elements' do
      it 'removes from the front of the list' do
        stack.push 1
        stack.push 2
        expect(stack.pop).to eq 2
      end
    end

    context 'empty stack' do
      it 'returns nil' do
        expect(stack.pop).to eq nil
      end
    end
  end
end