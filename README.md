# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

## Ruby version
  - ruby 2.7.2p137 (2020-10-01 revision 5445e04352) 
  - Rails 6.0.4.1

## Configuration

      $ bundle install
## Database creation

for this we used the figaro gem for security reasons 

- install figaro
      
     $ bundle exec figaro install 

- add code at file application.yml
 
      development:
        username_postgres: postgres
        password_postgres: "123456"
        port_postgres: "5432"
        host_postgres: localhost

- create database
      
      $ rake db:create
      $ rake db:migrate
      $ bin/rake db:migrate RAILS_ENV=test
## How to run the test suite
      
      $ bundle exec rspec

## Services (job queues, cache servers, search engines, etc.)

      $ rails server
