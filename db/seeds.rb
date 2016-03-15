User.destroy_all
ActiveRecord::Base.connection.execute(
  "ALTER SEQUENCE users_id_seq RESTART WITH 1"
)

yunchang = User.create!(first_name: 'Yunchang', 
            last_name: 'Diao', 
            email: 'yunchang@futureworkz.com', 
            password: '123123123',
            password_confirmation:  '123123123')

User.create!(first_name: 'James', 
            last_name: 'fwz', 
            email: 'james@futureworkz.com', 
            password: '123123123',
            password_confirmation:  '123123123')

Post.destroy_all
ActiveRecord::Base.connection.execute(
  "ALTER SEQUENCE users_id_seq RESTART WITH 1"
)
yunchang.posts.create(title: 'Why am i handsome?', content: 'Because i am very handsome.')

