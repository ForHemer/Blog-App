# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
first_user = User.create(Name: 'Tom', Photo: 'https://unsplash.com/photos/F_-0BxGuVvo', Bio: 'Teacher from Mexico.')
second_user = User.create(Name: 'Lilly', Photo: 'https://unsplash.com/photos/F_-0BxGuVvo', Bio: 'Teacher from Poland.')


first_post = Post.create(author: first_user, Title: 'Hello 1', Text: 'This is my first post')
second_post = Post.create(author: first_user, Title: 'Hello 2', Text: 'This is my second post')
third_post = Post.create(author: first_user, Title: 'Hello 3', Text: 'This is my third post')
fourth_post = Post.create(author: first_user, Title: 'Hello 4', Text: 'This is my fourth post')
fifth_post = Post.create(author: first_user, Title: 'Hello 5', Text: 'This is my fifth post')

Comment.create(post: first_post, author: first_user, Text: 'Good morning my friends!' )
Comment.create(post: second_post, author: first_user, Text: 'Have a nice day partner!' )
Comment.create(post: first_post, author: first_user, Text: 'Hi Mickey!' )
Comment.create(post: first_post, author: first_user, Text: 'Hi Donald!' )
Comment.create(post: first_post, author: second_user, Text: 'Hi Pluto!' )
Comment.create(post: first_post, author: second_user, Text: 'Hi Scrooge!' ) 
Comment.create(post: first_post, author: second_user, Text: 'Hi Dafey!' )
