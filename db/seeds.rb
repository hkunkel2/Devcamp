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

#create 9 portfolio items
8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "Ruby on Rails",
        body: "Quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum. Quisque id diam vel quam elementum. Arcu risus quis varius quam quisque id diam vel quam. Risus quis varius quam quisque. Duis at tellus at urna condimentum mattispellentesque id. Vel elit scelerisque mauris pellentesque pulvinar pellentesque.Fusce ut placerat orci nulla pellentesque. Congue quisque egestas diam in arcu cursus euismod quis.",
        main_image: "https://cdn.pixabay.com/photo/2020/11/22/20/39/giraffe-5767909_1280.jpg",
        thumb_image: "https://cdn.pixabay.com/photo/2019/01/26/10/24/eagle-3955951_1280.jpg"
    )
end

1.times do |portfolio_item|
    Portfolio.create!(
        title: ": #{portfolio_item}",
        subtitle: "Angular",
        body: "Quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum. Quisque id diam vel quam elementum. Arcu risus quis varius quam quisque id diam vel quam. Risus quis varius quam quisque. Duis at tellus at urna condimentum mattispellentesque id. Vel elit scelerisque mauris pellentesque pulvinar pellentesque.Fusce ut placerat orci nulla pellentesque. Congue quisque egestas diam in arcu cursus euismod quis.",
        main_image: "https://cdn.pixabay.com/photo/2020/11/22/20/39/giraffe-5767909_1280.jpg",
        thumb_image: "https://cdn.pixabay.com/photo/2019/01/26/10/24/eagle-3955951_1280.jpg"
    )
end
puts "9 portfolios created"
