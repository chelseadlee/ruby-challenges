class Blog
	@@num_blog_posts = 0
	@@blog_posts = []

	def self.create_blog_post
		puts "Blog Title?"
		title = gets.chomp
		puts "Content?"
		content = gets.chomp
		puts "Who are you?"
		author = gets.chomp
		blog_post = BlogPost.new(author, title, content)
		self.save(blog_post)
		puts "Do you want to create another blog post? [Y/N]"
		self.create_blog_post if gets.chomp.downcase == 'y'
	end

	def self.save(blog_post)
		@@blog_posts << blog_post
		@@num_blog_posts += 1
	end

	def self.publish
		@@blog_posts.each do |blog_post|
			puts "Title: #{blog_post.title}"
			puts "Author: #{blog_post.author}"
			puts "Content: #{blog_post.content}"
			puts "Published: #{blog_post.time}"
		end
	end
	
	def self.all
		return @@blog_posts
	end

end

class BlogPost
	attr_accessor :author, :title, :content
	attr_reader :time

	def initialize(author, title, content)
		@author = author
		@title = title
		@content = content
		@time = Time.now 
	end
end

Blog.create_blog_post
puts Blog.all
Blog.publish


