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
end