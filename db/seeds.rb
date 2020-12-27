#crate three topics
3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

puts "3 Topics were created"
#create ten blogs
10.times do |blog|
Blog.create!(
title: "My Blog Post #{blog}",
body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elementum integer enim neque volutpat ac tincidunt vitae semper. At ultrices mi tempus imperdiet. Amet risus nullam eget felis eget nunc. Urna et pharetra pharetra massa massa ultricies mi. Cras sed felis eget velit aliquet sagittis. Nibh nisl condimentum id venenatis a condimentum vitae sapien pellentesque. Imperdiet proin fermentum leo vel orci porta non pulvinar. Risus pretium quam vulputate dignissim suspendissein est ante. Faucibus scelerisque eleifend donec pretium vulputate. Vel orci porta nonpulvinar neque laoreet suspendisse interdum. Nisl rhoncus mattis rhoncus urna. Sem nulla pharetra diam sit.",
topic_id: Topic.last.id
)
end

puts "10 blog post created"

#create 5 skils
5.times do |skill|
Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 20
)
end

puts "5 blog post created"


