require './lib/Calculator.rb'

describe Calculator do
  subject { Calculator.new }

  describe '#add' do
    it 'returns the sum of two numbers' do
      expect(subject.add(2,5)).to eql(7)
    end
  end

  describe 'truth' do
    it 'returns true' do
      expect(subject).to be_truth
    end

    it 'return pi is more than 3' do
      expect(Math::PI).to be > 3 
    end
  end
end

