require 'secretdiary'

describe SecretDiary do

  describe 'initialize' do
    diary1 = SecretDiary.new
    it 'creates a new instance of the diary class' do
      expect(diary1).to be_an_instance_of(SecretDiary)
    end
  end

  describe '#add_entry' do
    it 'responds to add entry' do
      expect(subject).to respond_to(:add_entry)
    end

    it 'throws an error if locked' do
      expect { subject.add_entry }.to throw :locked
    end
  end

  describe '#get_entries' do
    it 'responds to get entries' do
      expect(subject).to respond_to(:get_entries)
    end
  end

end
