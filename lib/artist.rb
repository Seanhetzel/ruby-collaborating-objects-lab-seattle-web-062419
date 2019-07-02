class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    #if @@all.find(name)
    #  self
    #else
    #  self.new(name)
    #end
    self.find(name) ? self.find(name) : self.create(name)

  end
end
