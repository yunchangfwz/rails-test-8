User.destroy_all
ActiveRecord::Base.connection.execute(
  "ALTER SEQUENCE users_id_seq RESTART WITH 1"
)

yunchang = User.create!(first_name: 'Yunchang', 
            last_name: 'Diao', 
            email: 'yunchang@futureworkz.com', 
            password: '123123123',
            password_confirmation:  '123123123')

james = User.create!(first_name: 'James', 
            last_name: 'fwz', 
            email: 'james@futureworkz.com', 
            password: '123123123',
            password_confirmation:  '123123123')

Post.destroy_all
ActiveRecord::Base.connection.execute(
  "ALTER SEQUENCE posts_id_seq RESTART WITH 1"
)
post = yunchang.posts.create(title: 'Why am i handsome?', content: 'Because i am very handsome.')

Comment.destroy_all
ActiveRecord::Base.connection.execute(
  "ALTER SEQUENCE comments_id_seq RESTART WITH 1"
)
post.comments.create(message: 'Yeah, of course', user: yunchang)
post.comments.create(message: 'Yeah, i confirm', user: james)
