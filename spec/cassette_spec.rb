require_relative '../lib/cassette.rb'

SONGS = ["Why", "Walking on Broken Glass", "Precious", "Legend in My Living Room", "Cold", "Money Can't Buy It", "Little Bird", "Primitive", "Stay by Me", "The Gift"]
describe(Cassette) do
  it('contains songs') do
    annielennox_diva = Cassette.new(SONGS)
    expect(annielennox_diva.songs).to eq(SONGS)
  end

  it('plays songs in order') do
    annielennox_diva = Cassette.new(SONGS)
    expect(annielennox_diva.play_song).to eq("♩♪♫♪ :: Why plays:: ♪♫♪♩")
  end

  it('Has a playhead that can be moved forward and backward') do
    annielennox_diva = Cassette.new(SONGS)
    expect(annielennox_diva.fast_forward(2)).to eq(2)
    expect(annielennox_diva.rewind(1)).to eq(1)
  end

  it('When it has reached the end of the tape it must be rewound to play again') do
    annielennox_diva = Cassette.new(SONGS)
    expect(annielennox_diva.rewind(0)).to eq(0)
  end

end
