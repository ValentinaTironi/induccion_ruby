require 'ejercicio4'
describe Alternative do
  subject { described_class.take(array, n) }
  describe '.take' do

    context 'n >= array elements' do
      let(:array) { %w[example] }
      let(:n) { 3 }

      it 'return array' do
        expect(subject).to eq(array)
      end
    end

    context 'array elements > n' do
      let(:array) { %w[example example] }
      let(:n) { 1 }

      it 'return n elements from array' do
        expect(subject).to eq(%w[example])
      end
    end
  end
end
