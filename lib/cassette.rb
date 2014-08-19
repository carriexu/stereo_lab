class Cassette
  attr_reader   :songs, :playhead, :number
  def initialize(songs)
    @playhead = 0
    @songs = songs
    @number = number
  end

#play songs in order
  def play_song
    if @playhead < @songs.size
      "♩♪♫♪ :: #{@songs[@playhead]} plays:: ♪♫♪♩"
    elsif
      @playhead = 0
    else
      @playhead += 1
    end
  end

  def fast_forward(number)
    @playhead += number
  end

  def rewind(number)
    if number == 0
      @playhead = 0
    else
      @playhead -= number
    end
  end
end
