class Song
  attr_accessor :name, :artist_name
  @@all = []
 
  def self.all
    @@all
  end
 
  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    @@all << song
    song
  end
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end
end





























=begin
  
  def self.new_by_name(title)  #class constructor
    song = self.new  #initializes a song
    song.name = title  #sets song name string as a property
    song  #returns song instance with that name as a property
  end
  
  def self.create_by_name(title)  #class constructor
    song = self.create 
    song.name = title 
    song
  end
  
  def self.find_by_name(title)  #class finder
    result = self.all.detect{|song| song.name == title}
    result
  end
  
  def self.find_or_create_by_name(title)
    result = self.find_by_name(title)
    if result
      result
    else
      self.create_by_name(title)
    end
  end

  def self.alphabetical
    sort = self.all.sort_by {|song| song.name}
    sort
  end

  def self.new_from_filename(filename)
    song_arr = filename.split(" - ")
    song_arr[1] = song_arr[1].chomp(".mp3")
    song = self.new
    song.name = song_arr[1]
    song.artist_name = song_arr[0]
    song
  end
  
  def self.create_from_filename(filename)
    result = self.new_from_filename(filename)
    song = self.create 
    song.name = result.name
    song.artist_name = result.artist_name
    song
  end

  def self.destroy_all
    self.all.clear
  end
end
=end