User.destroy_all
Blog.destroy_all
Post.destroy_all

ayato_p = User.create name: 'ayato_p'

ayalog = ayato_p.create_blog title: 'ayalog'

ayalog.posts.create title: 'Hello', content: 'Hello, world!!'
