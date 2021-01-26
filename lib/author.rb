class Author

    attr_accessor :name, :title
    
    @@post_count = []

    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        Post.all.select{|i| i.author == self}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        @posts << post
        post.author = self
    end

    def self.post_count
        @@post_count = 3
    end


end