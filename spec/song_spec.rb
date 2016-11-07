require_relative '../lib/album.rb'

describe 'Song' do
  subject(:song) { Song.new(title: 'Sympathique') }

  it 'is an song' do
    expect(subject).to be_a(Song)
  end

  it 'has required attributes' do
    expect(subject.instance_variables).to include(:@rating)
    expect(subject.instance_variables).to include(:@title)
  end

  it 'has getters for @title, @rating' do
    expect { subject.title }.not_to raise_error
    expect { subject.rating }.not_to raise_error
  end

  it 'has no setter for @title' do
    expect { subject.title = 'Born in the USA' }. to raise_error(NoMethodError)
  end

  it 'has setters for @rating' do
    expect { subject.rating = 5 }.not_to raise_error
  end

  # it 'can be found by title' do
  #   expect(Album.find_by_title('Sympathique')).to eq(subject)
  # end
end
