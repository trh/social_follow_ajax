social_follow_ajax
==================

Example Rails 3 application using acts_as_follower with ajax

### App utilizes 
* Bootstrap
* Devise
* HAML
* acts_as_follower
* thin

### Set Up 
* Clone repository - `git clone https://github.com/trh/social_follow_ajax.git`
* Using rvm, remove .ruby-version or initialize your own ruby version and gemset - `rvm use ruby-1.9.3@mygetsetname --ruby-version --create`
* Bundle - `bundle install`
* Migrate - `bundle exec rake db:migrate`
* Seed - `bundle exec rake db:seed`
* Launch - `rails s`


### Run
Visit http://localhost:3000

You will see a list of users.  Sign up or sign in as an existing user, existing users email addresses are number@example.com with a password of password, the numbers are `one` through `ten`.
