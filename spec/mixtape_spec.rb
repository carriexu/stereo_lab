require_relative '../lib/mixtape.rb'
require_relative '../lib/cassette.rb'


song_list = ["Moribund the Burgermeister - Peter Gabriel",
    "Theme from Jurassic Park - John Williams",
    "Walking in Memphis - Marc Cohn",
    "You Can Call me Al - Paul Simon",
    "Free Fallin' - Tom Petty",
    "some dan fogelberg song - Dan Fogelberg",
    "Graceland - Paul Simon",
    "Sledgehammer - Peter Gabriel",
    "Heathcliff's Haiku Warriors - DMB",
    "Night Moves - Bob Seger"]
describe(Mixtape) do
  it('When you play a song, it includes the name of the song and the artist.') do
    middle_school_mix_01 = Mixtape.new(song_list)
    expect(middle_school_mix_01.play_song).to eq("♩♪♫♪ :: Moribund the Burgermeister - Peter Gabriel plays:: ♪♫♪♩")
  end

  it('You can seek for the next song by a given artist') do
    middle_school_mix_01 = Mixtape.new(SONGS)
    expect(middle_school_mix_01.seek("DMB")).to eq("Heathcliff's Haiku Warriors")
  end

  # it('Has a playhead that can be moved forward and backward') do
  #   annielennox_diva = Cassette.new(SONGS)
  #   expect(annielennox_diva.fast_forward(2)).to eq(2)
  #   expect(annielennox_diva.rewind(1)).to eq(1)
  # end

  # it('When it has reached the end of the tape it must be rewound to play again') do
  #   annielennox_diva = Cassette.new(SONGS)
  #   expect(annielennox_diva.rewind(0)).to eq(0)
  # end
end
