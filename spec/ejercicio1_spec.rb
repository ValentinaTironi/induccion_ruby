# spec/ejercicio1_spec.rb
require_relative '/home/moove-it/induccion_ruby/induccion_ruby/lib/ejercicio1'
describe Element do
  describe '.biggest' do
    context 'element nil' do
      it 'return zero' do
        expect(Element.biggest).to eq(0)
      end
    end

    context 'element void' do
      it 'retorna cero' do
        expect(Element.biggest('')).to eq('')
      end
    end
    context 'one element' do
      it 'return element' do
        expect(Element.biggest('word')).to eq('word')
      end
    end

    context 'elements with the same length' do
      it 'return the first element' do
        expect(Element.biggest('one', 'two')).to eq('one')
      end
    end

    context 'numbers' do
      it 'return Invalid' do
        expect(Element.biggest(1)).to eq('Invalid')
      end
    end
  end
end
