include FFaker

author_john = Author.create(username: 'johndoe', name: 'John Doe', password: 'password', domain: 'localhost',
  email: 'johndoe@example.com', image_url: 'http://robohash.org/johndoe.png?size=300x300')
user_john = User.create(username: 'johndoe', password: 'password', author: author_john)

5.times do
  name     = Name.name
  username = name.downcase.gsub(' ', '')
  password = Internet.password
  domain   =  Internet.domain_name
  email = Internet.email
  author = Author.create(username: username, name: name, password: password, domain: domain, email: email,
    image_url: "http://robohash.org/#{username}.png?size=300x300")
  User.create(username: username, password: password, author: author, email: email)
end

authors = Author.all
authors.each { |a| Feed.create(author: authors.sample) }

100.times do |n|
  Update.create(author: authors.sample,
                text: n%10 == 0 ? '@johndoe ' + Lorem.sentence : Lorem.sentence,
                feed: Feed.first)
end
