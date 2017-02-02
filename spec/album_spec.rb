# frozen_string_literal: true

require_relative '../lib/album.rb'

describe 'Album' do
  subject(:album) { Album.new }

  it 'is an album' do
    expect(subject).to be_a(Album)
  end

  it 'can search for a song' do
    expect(Album.search('Formation')).to be_a(Song)
  end

  it 'returns the correct song count' do
    expect(Album.count).to eq(4)
  end
end
