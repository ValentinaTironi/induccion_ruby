require 'ejercicio5'

describe Ejercicio5 do

  describe '.swapcase' do
    subject { described_class.swapcase(string) }

    context 'empty string' do
      let(:string) { '' }
      it 'returns an empty string' do
        expect(subject).to eq(string)
      end
    end

    context 'when every character is capital' do
      let(:string) { 'EXAMPLE' }
      it 'returns every character on downcase' do
        expect(subject).to eq('example')
      end
    end

    context 'when every character is lowercase' do
      let(:string) { 'example' }
      it 'returns every character on upcase' do
        expect(subject).to eq('EXAMPLE')
      end
    end

    context 'string with characters upcase and downcase' do
      let(:string) { 'EXamPLe' }
      it 'returns the opposite in both cases' do
        expect(subject).to eq('exAMplE')
      end
    end
  end
end
