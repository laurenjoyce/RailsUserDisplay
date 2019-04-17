# PopPaysTechnical: Rails User Display

A simple rails application that displays a user list and user show pages. Allows for the adding, editing, and deletion of users. Validations set for presence and uniqueness of name, for users. 

The list of users and individuals users can be returned as json payload if requested.

#### Ruby Version
   
ruby-2.6.2

#### Rails Version

   rails-5.2.3

### Bundle/Installation Instructions

* Clone Github repo
* CD into application folder

All necessary libraries and packages for running this application are provided in the GEMFILE included in the source-code. Use the command:

```$ bundle install```

to install all libraries and packages listed.

### Local Testing and Development

In the root directory 'PopPaysTechnical', run the following command in your terminal:

```rails server```

Navigate to 'http://localhost:3000/' on your web browser to run the application locally.

To be returned as json payload, add '.json' to the end of the user list path or user path:

```http://localhost:3000/users.json```
```http://localhost:3000/users/1.json```

### Database creation
* Uses sqlite3 as the database for Active Record


### How to run the test suite

Uses Minitest test suite for Ruby

* To run the Users Controller tests, run the following command in your terminal:

```ruby -Itest test/controllers/users_controller_test.rb```

* To run the User Model tests run the following command in yourl terminal:

```ruby -Itest test/models/user/user_test.rb```

Uses Capybara for UI system testing and Selenium for browser automation

* To run the Capybara acceptance tests for the UI, run the following command in your terminal:

```ruby -Itest test/ui/users/application_system_test_case.rb```
