User.create!(
  email: "test3@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "AdminBoy",
  roles: "site_admin"
  )
  
puts "Admin created"

User.create!(
  email: "user@user.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Regular User",
  )

  sk = ["C#", "Rails", "HTML", "CSS", "JavaScript"]
  per = [40, 30, 10, 10, 10]
  
5.times do |num|
    Skill.create!(
      title: sk[num],
      percentUtilized: per[num]
      )
end
  
puts "5 skills created"

def top title 
  Topic.create!(
    title: title
    )
end 

top "Computer Science/Programming"
top "Thoughts"
top "General"

puts "3 topics created"




10.times do |num|

    Blog.create!(
      title: "This is Blog post # #{num + 1}",
      body: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque 
      laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto 
      beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut 
      odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
      Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, 
      sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat 
      voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit 
      laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui 
      in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo
      voluptas nulla pariatur?", topic_id: Topic.last.id
      )
end
    
    puts "10 blog posts created"

  
      8.times do |asdf|
        Portfolio.create!(
          title: "Portfolio title #{asdf + 1}",
          subtitle: "Ruby on Rails",
          body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
          incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
          exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
          in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
          occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." ,
          mainImage:"http://via.placeholder.com/600x400" ,
          thumbImage:"http://via.placeholder.com/350x200" ,
          
          )
      end
      
      puts "8 portfolios created"
      
      1.times do |asdf|
        Portfolio.create!(
          title: "Portfolio title #{asdf + 1}",
          subtitle: "Angular",
          body:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
          incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
          exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
          in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
          occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." ,
          mainImage:"http://via.placeholder.com/600x400" ,
          thumbImage:"http://via.placeholder.com/350x200" ,
          
          )
      end
      
      puts "1 portfolio created"
      
      3.times do |num|
        Portfolio.last.technologies.create!(
          name: "Technology #{num + 1}",
          )
      end
      
      puts "3 Technologies created"