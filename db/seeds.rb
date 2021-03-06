# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# This format did not work
# User.create(name: "KingKong", email: "walterchkoning@yahoo.com", password: "123faker")
# Organization.create(name: "Test", url: "http://www.test.com", linkedin: "https://www.linkedin.com/pub/walter-koning/1/b02/a51", user_id: "1")

# This format worked. TODO: Delete this seed user after I figure out how to get the organization seed data working.
#User.create!(:name => "KingKong", :email => "walterchkoning@yahoo.com", :password => "123faker", :password_confirmation => "123faker")
# Organization.create!(:name => "Test", :url => "http://www.test.com", :linkedin => "https://www.linkedin.com/pub/walter-koning/1/b02/a51", :user => 1)

#User.delete_all	
User.find(7).delete
new_user = User.create!(:name => "Retlaw", :email => "thisiswk@gmail.com", :password => "123faker", :password_confirmation => "123faker")
new_user.organizations.create!(:name => "RetlawProfile", :url => "http://www.test.com", :linkedin => "https://www.linkedin.com/pub/walter-koning/1/b02/a51")
#new_user.Organization.create!(:name => "RetlawProfile", :url => "http://www.test.com", :linkedin => "https://www.linkedin.com/pub/walter-koning/1/b02/a51")

# User.new(name: "Example User", email: "user@example.com")
# foo = User.create(name: "Foo", email: "foo@bar.com")
# User.find_by(email: "mhartl@example.com")
