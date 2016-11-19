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

Question.create!(
    title: "What is a dog?",
    body: "A dog a four legged animal that is often domesticated and then consumed."
)

Question.create!(
    title: "What is a cat?",
    body: "A cat a four legged animal that is often domesticated and then consumed."
)

Question.create!(
    title: "What is a bird?",
    body: "A bird a two wingged animal that is often domesticated and then consumed."
)

puts "Seed finished"
puts "#{Question.count} posts created"