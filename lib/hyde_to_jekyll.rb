require 'pry'
require 'reverse_markdown'

module HydeToJekyll

  class Post
    def initialize(klass=Class)
      @posts = klass
      @attributes = []
    end

    def add_field(title, content)
      @attributes << [title, content]
    end

    def attributes
      @attributes
    end
  end

  class MarkdownConverter
    def initialize
    end

    def convert(html, github_flavored=false)
      ReverseMarkdown.convert(html, github_flavored: true)
    end
  end

  class JekyllBlog
    def initialize
      @converter = MarkdownConverter.new
    end
    def setup
      `wget https://github.com/necolas/jekyll-boilerplate/archive/master.zip`
      `unzip master.zip`
      `mkdir _posts`
      `ls`
    end

    def convert html
      @converter.convert html
    end

    def write_posts markdown_posts
      markdown_posts.map { |p|
        File.open("_posts/#{p[1] + Random.rand(1000).to_s}.md", "wb") do |f|
          f.write(p[0])
        end
      }
    end
  end
end

def test
  posts = [] 
  1000.times do |time| 
    posts << "<h1><div>#{time}</div></h1>"
  end
  converted_posts = []
  blog = HydeToJekyll::JekyllBlog.new
  posts.each do |post|
    p = HydeToJekyll::Post.new
    p.add_field("title#{Random.rand(1000).to_s}", post)
    result = blog.convert p.attributes[0][1]
    converted_posts << [result, p.attributes[0][0]]
  end
  blog.write_posts converted_posts
end

test
