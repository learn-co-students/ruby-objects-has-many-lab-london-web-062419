
require 'pry'
class Post 

attr_accessor :title, :author

@@all = []
@@post_count = 0


def initialize(title)

    @title = title
    @post = []
    # @@count += 1
    @@all << self



end

def author_name

  self.author ? self.author.name : nil

end



def self.all
    @@all
end



# binding.pry
# 0
end