require_relative '../lib/ejercicio1'
describe Element do
  describe '.biggest' do
    subject { Element.biggest(*value) }
    context 'element void' do
      let(:value) { '' }

      it 'return zero' do
        expect(subject).to eq('')
      end
    end

    context 'one element' do
      let(:value) { 'word' }

      it 'return element' do
        expect(subject).to eq('word')
      end
    end

    context 'elements with the same length' do
      let(:value) { %w[one two] }

      it 'return the first element' do
        expect(subject).to eq('one')
      end
    end

    context 'element biggest' do
      let(:value) { %w[example exam] }

      it 'return the biggest element' do
        expect(subject).to eq('example')
      end
    end
  end
end
