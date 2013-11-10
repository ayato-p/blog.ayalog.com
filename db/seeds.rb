# -*- coding: utf-8 -*-
require 'bcrypt'

User.destroy_all
Blog.destroy_all
Post.destroy_all

ayato_p = User.create name: 'ayato_p', password: 'test', password_confirmation: 'test'

ayalog = ayato_p.create_blog title: 'ayalog'

post1 = ayalog.posts.create title: 'Hello', content: 'Hello, world!!', created_at: "2013-11-01 10:00:00"
post2 = ayalog.posts.create title: 'Good bye', content: 'good bye', created_at: "2013-11-02 10:00:00"
post3 = ayalog.posts.create title: 'Welcome', content: 'welcome
welocme', created_at: "2013-11-03 10:00:00"

category1 = Category.create title: "日記"
category2 = Category.create title: "雑談"


Categorization.create post_id: 1, category_id: 1
Categorization.create post_id: 2, category_id: 1
Categorization.create post_id: 2, category_id: 2
Categorization.create post_id: 3, category_id: 2

