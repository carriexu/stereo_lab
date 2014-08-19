require_relative '../lib/vinyl.rb'

describe(Cassette) do
  it('contains songs') do
    annielennox_diva = Cassette.new("Why", "Walking on Broken Glass", "Precious", "Legend in My Living Room", "Cold", "Money Can't Buy It", "Little Bird", "Primitive", "Stay by Me", "The Gift")
    expect(annielennox_diva.songs).to eq("God Only Knows", "Surfing USA")
  end

  # it('has an A side and a B side') do
  #   pet_sounds = Vinyl.new('Beach Boys','Pet Sounds', 33)
  #   expect(pet_sounds.side).to eq('A')
  #   pet_sounds.side = 'B'
  #   expect(pet_sounds.side).to eq('B')
  # end

  # it('has a speed') do
  #   pet_sounds = Vinyl.new('Beach Boys','Pet Sounds', 33)
  #   expect(pet_sounds.speed).to eq('33')
  # end

  # it('can be played') do
  #   pet_sounds = Vinyl.new('Beach Boys','Pet Sounds', 33)
  #   expect(pet_sounds.play).to eq("♩♪♫♪ ::'Beach Boys - Pet Sounds' (Side A) plays:: ♪♫♪♩")
  # end

  # it('can be flipped') do
  #   pet_sounds = Vinyl.new('Beach Boys','Pet Sounds', 33)
  #   expect(pet_sounds.flip.play).to eq("♩♪♫♪ ::'Beach Boys - Pet Sounds' (Side B) plays:: ♪♫♪♩")
  # end
end
