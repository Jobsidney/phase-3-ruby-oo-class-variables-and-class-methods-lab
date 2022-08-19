class Song
    @@count=0
    @@artists=[]
    @@genres=[]
    @@songs
    def initialize(name,artist,genre)
        @@count+=1
        @name=name
        @artist=artist
        @genre=genre
        @@artists<<artist
        @@genres<<genre
        
    end
    def self.count
        @@count
    end

    def name
        @name
    end
    def artist
        @artist
    end
    def genre
        @genre
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
        @@genres.tally
    end
    def self.artist_count
        @@artists.tally
    end
    
end

attrr =Song.new("Jovial","Eddy","pop")
pp Song.artists