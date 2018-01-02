require 'ejercicio3'
describe Ejercicio3 do
  describe '.include?' do
    subject { described_class.include?(array, object) }

    context 'array empty' do
      let(:array) { [] }
      let(:object) { 'example' }

      it 'return false' do
        expect(subject).to eq(false)
      end
    end

    context 'object nil' do
      let(:array) { %w[example] }
      let(:object) { nil }

      it 'return false' do
        expect(subject).to eq(false)
      end
    end

    context 'array empty' do
      let(:array) { [] }
      let(:object) { 'example' }

      it 'return false' do
        expect(subject).to eq(false)
      end
    end

    context 'object empty' do
      let(:array) { %w[example] }
      let(:object) { '' }

      it 'return false' do
        expect(subject).to eq(false)
      end
    end

    context 'object exist' do
      let(:array) { %w[e ex] }
      let(:object) { 'ex' }

      it 'return true' do
        expect(subject).to eq(true)
      end
    end

    context 'object does not exist' do
      let(:array) { %w[e ex exa] }
      let(:object) { 'exam' }

      it 'return true' do
        expect(subject).to eq(false)
      end
    end
  end
end
