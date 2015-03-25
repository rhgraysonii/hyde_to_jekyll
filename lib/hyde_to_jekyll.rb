require 'pry'

module HydeToJekyll
  class MarkdownConverter
    def initialize
      @converter = ReverseMarkdown
    end

    def convert(html, github_flavored=false)
      @converter.convert(html, github_flavored: true)
    end
  end

  class JekyllBlog
    def initialize
      @converter = MarkdownConverter.new
    end
    def setup
      `wget https://github.com/necolas/jekyll-boilerplate/archive/master.zip`
      `unzip master.zip`
      `ls`
    end

    def convert html
      @converter.convert html
    end
  end
end

a = HydeToJekyll::JekyllBlog.new

a.setup
