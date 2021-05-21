
class Artist
    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs 
        Song.all.select{|song| song.artist == self}
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        Song.all.select{|song| song.artist == self}.map{|song| song.genre}
    end
end