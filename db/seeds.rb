 require 'faker'

 #find_or_create_by
 
 # Create Posts
 50.times do
   Post.create!(
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph
   )
 end

 posts = Post.all

 # Create Post
 #find_or_create_by

 
 # Create Comments
 100.times do
   Comment.create!(
     post: posts.sample,
     body: Faker::Lorem.paragraph
   )
 end


 5.times do |i|
  Product.create(name: "Product ##{i}", description: "A product.")
end

 #find_or_create_by
 
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 