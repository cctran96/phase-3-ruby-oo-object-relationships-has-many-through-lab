class Song
    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name, @artist, @genre = name, artist, genre
        @@all << self
    end
end