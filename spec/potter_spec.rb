describe 'Sweet sweet fan fiction' do
  let!(:subject) { File.read "#{Dir.pwd}/fan-fiction.md" }

  it 'is sufficiently potter' do
    expect(subject).to match(/potter/i)
  end

  it 'smells good' do
    expect(subject).to match(/deodorant/i)
  end

  describe "Blush level" do
    it 'must not be 50 shades of potter' do
      expect(subject).to_not match(/throb/i)
      expect(subject).to_not match(/chain/i)
      expect(subject).to_not match(/whip/i)
    end
  end
end
