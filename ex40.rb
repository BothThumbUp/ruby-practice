# creates the class Song
class Song
  # initialize passes these parameters when creating a new instance of Song.
  # this allows for us to create instance variables to use within the class's functions.
  def initialize(title, artist, lyrics)
    # this assigns each parameter to an instance variable.
    @title = title
    @artist = artist
    @lyrics = lyrics
  end

  def print_title
    p @title
  end

  def print_artist
    p @artist
  end

  def print_lyrics
    @lyrics.each {|line| p line}
  end

  def print_info
    p "#{@title}, by #{@artist}"
    p "~~~~~~~~~~~~~~~~~~~~~~~"
    @lyrics.each {|line| p line}
  end
end


hey_jude = Song.new('Hey Jude', 'The Beatles', ["hey jude",
          "don't make it bad",
          "take a sad song and make it better"])

#hey_jude.print_title
#hey_jude.print_artist
#hey_jude.print_lyrics
hey_jude.print_info
