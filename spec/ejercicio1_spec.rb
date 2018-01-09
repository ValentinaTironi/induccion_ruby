require_relative '../lib/ejercicio1'
describe Element do
  describe '.biggest' do
    subject { Element.biggest(*value) }

    context 'empty element' do
      let(:value) { '' }

      it 'return empty' do
        expect(subject).to eq( value )
      end
    end

    context 'one element' do
      let(:value) { 'example' }

      it 'return element' do
        expect(subject).to eq(value)
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
