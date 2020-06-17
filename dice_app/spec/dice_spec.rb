require 'dice'

describe Dice do

  describe '#roll' do
    it 'responds to roll with 1 argument' do
      expect(subject).to respond_to(:roll).with(1).argument
    end

    it 'returns a number between 1 and 6' do
      expect(subject.roll).to be_between(1, 6)
    end

    it 'returns a random number between 1 and 6' do
      expect(subject).to receive(:rand).and_return(123456)
      expect(subject.roll).to eq 123456
    end

    it 'returns 2 numbers if we ask it to roll 2 times' do
      dice = Dice.new
      allow(dice).to receive(:roll) { 3 }
      expect(dice.roll(2)).to eq([3,3])
    end
  end

end
