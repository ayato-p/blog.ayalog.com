User.destroy_all
Blog.destroy_all
Post.destroy_all

ayato_p = User.create name: 'ayato_p'

ayalog = ayato_p.create_blog title: 'ayalog'

post1 = ayalog.posts.create title: 'Hello', content: 'Hello, world!!'
post2 = ayalog.posts.create title: 'Good bye', content: 'good bye'
