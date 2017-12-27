require 'ejercicio2'
describe Number do
  describe '.random' do
    context 'execute function' do
      it 'return a number between 10-100' do
        expect(described_class.random).to be_between(10.00, 100.00)
      end
    end
  end
end
