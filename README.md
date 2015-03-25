# HydeToJekyll
#### Note, this is a WIP
## Intention
A lot of people run a blog backed by a relational database.
Often, the rendered HTML of this code is easily accessible.
This is a gem that strives to take that, and with a single operatoin create a jekyll page, removing the need
for a database from your blog, and allowing you to adopt the wonderful way of life that is markdown and Vi
for all blogging desires.

## Usage
Currently the usage is as follows:
With the gem installed, open up your rails console, and with the Model you use for your blog posts, run:

```RUBY
HydeToJekyll.convert(posts)
```

This will do a few things:

1. Create a `_posts` directory in the current dir
2. Take all posts, as well as the field 'html' and 'title' (assigned as an attr_accessible on the model) received
3. Convert the HTML to markdown
4. Write a `title.md` file of the converted markdown in `_posts`
5. Create a boilerplate jekyll page
6. Move created posts to jekyll's posts directory

And boom, now you have a jekyll blog inside the rails project that is easily extracted.

