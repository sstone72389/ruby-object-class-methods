require_relative '../lib/album.rb'

describe 'Album' do
  subject(:album) { Album.new(artist: 'Pink Martini', title: 'Sympathique') }

  it 'is an album' do
    expect(subject).to be_a(Album)
  end

  it 'has required attributes' do
    expect(subject.instance_variables).to include(:@artist)
    expect(subject.instance_variables).to include(:@title)
  end

  it 'has getters for @artist, @title' do
    expect { subject.artist }.not_to raise_error
    expect { subject.title }.not_to raise_error
  end

  it 'has no setter for @artist, @title' do
    expect { subject.artist = 'Bon Jovi' }.to raise_error(NoMethodError)
    expect { subject.title = 'Born in the USA' }. to raise_error(NoMethodError)
  end

  it 'has setters for @tracks' do
    expect { subject.tracks << Song.new(title: 'Amado Mio') }.not_to raise_error
  end

  # it 'can be found by title' do
  #   expect(Album.find_by_title('Sympathique')).to eq(subject)
  # end
end
