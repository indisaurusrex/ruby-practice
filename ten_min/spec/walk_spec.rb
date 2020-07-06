require './ten_min_walk.rb'

describe 'tenminutewalk?' do
  it 'returns you to the start position' do
    outcome = tenminutewalk?(['n', 'n', 'n', 'n', 'n', 's', 's', 's', 's', 's'])
    expect(outcome).to eq true
  end
  it "returns false if you're not back at the start" do
    outcome = tenminutewalk?(['n', 'n', 'n', 'n', 'n', 's', 's', 's', 's', 'w'])
    expect(outcome).to eq false
  end
  it 'must receive 10 directions' do
    outcome = tenminutewalk?(['n', 'n', 's', 's'])
    expect(outcome).to eq false
  end
  it 'matches the tests provided - 1' do
    outcome = tenminutewalk?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'])
    expect(outcome).to eq true
  end
  it 'matches the tests provided - 2' do
    outcome = tenminutewalk?(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w'])
    expect(outcome).to eq false
  end
  it 'matches the tests provided - 3' do
    outcome = tenminutewalk?(['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n'])
    expect(outcome).to eq false
  end
end