# README

This README would normally document whatever steps are necessary to get the
application up and running.

onboarding:
cd ~/code/<your_github_nickname>
  git clone git@github.com:Gael123/MeetTheFamily.git
  cd MeetTheFamily
  bundle install
  yarn install
  rails db:create db:migrate db:seed

Running the app:

  rails s # go to http://localhost:3000/people/

Things you may want to cover:

* Ruby version
ruby version used 2.6

* System dependencies.
Used ancestry Gem to display parent /child

Gemfile
gem 'haml-rails'

gem 'jquery-rails'
gem "jquery-ui-rails"

gem 'ancestry'

routes
# config/routes.rb
resources :relationship_types
resources :people do
  collection do
     relationship :sort
  end
end

This page (sort_categories_path) will be used by the gem to update data after drag&drop.



# app/models/people.rb

class People < ActiveRecord::Base

  has_ancestry

  # it uses column ancestry_depth
  # has_ancestry :cache_depth=>true

end



* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
