class Blog

    @@all_blog_posts = []
    @@total_blog_posts = 0		

    def self.all
	@@all_blog_posts
    end

    def self.add_blogpost(thing)
	@all_blog_posts << thing
	@total_blog_posts += 1
    end

    def self.publish
	@@all_blog_posts.each do |post|
	  puts "Title:\n #{post.title}"
	  puts "Body:\n #{post.content}"
	  puts "Publish Date:\n #{post.created_at}"
	end
    end
end

class Post < Blog

    def initialize 
	@created_at = Time.now
	puts "what's the name of your blog post?"
	@title = gets.chomp

	puts "put your blog post content here:"
	@content = gets.chomp
    end

    def edit_blog_content
	puts "new blog title:"
	@title = gets.chmop
    
	puts "new blog text:"
	@content = gets.chomp
    end

end

my_blog = Blog.new
first_blog_post = my_blog.create_blogspot
all_blog_posts = my_blog.collect_blog_posts
puts my_blog.inspect
my_blog.publish(all_blog_posts)



