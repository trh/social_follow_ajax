puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin
user = User.create :name => "One User", :email => "one@example.com", :password => "password", :password_confirmation => "password"
puts 'user: ' << user.name
user.add_role :user
user = User.create :name => "Two User", :email => "two@example.com", :password => "password", :password_confirmation => "password"
puts 'user: ' << user.name
user.add_role :user
user = User.create :name => "Three User", :email => "three@example.com", :password => "password", :password_confirmation => "password"
puts 'user: ' << user.name
user.add_role :user
user = User.create :name => "Four User", :email => "four@example.com", :password => "password", :password_confirmation => "password"
puts 'user: ' << user.name
user.add_role :user
user = User.create :name => "Five User", :email => "five@example.com", :password => "password", :password_confirmation => "password"
puts 'user: ' << user.name
user.add_role :user
user = User.create :name => "Six User", :email => "six@example.com", :password => "password", :password_confirmation => "password"
puts 'user: ' << user.name
user.add_role :user
user = User.create :name => "Seven User", :email => "seven@example.com", :password => "password", :password_confirmation => "password"
puts 'user: ' << user.name
user.add_role :user
user = User.create :name => "Eight User", :email => "eight@example.com", :password => "password", :password_confirmation => "password"
puts 'user: ' << user.name
user.add_role :user
user = User.create :name => "Nine User", :email => "nine@example.com", :password => "password", :password_confirmation => "password"
puts 'user: ' << user.name
user.add_role :user
user = User.create :name => "Ten User", :email => "ten@example.com", :password => "password", :password_confirmation => "password"
puts 'user: ' << user.name
user.add_role :user
