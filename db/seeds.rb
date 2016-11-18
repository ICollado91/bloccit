require 'random_data'

# Create Posts
50.times do
    Post.create!(
            title: RandomData.random_sentence,
            body: RandomData.random_paragraph
        )
end

posts = Post.all

# Create Comments
100.times do
    Comment.create!(
            post: posts.sample,
            body: RandomData.random_paragraph
        )
end



puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

post1 = Post.find_or_create_by(title: "Unique", body: "This is a unique post!")
comment1 = Comment.find_or_create_by(post: post1, body: "This comment is unique")
puts "#{Post.count}"
puts "#{Comment.count}"