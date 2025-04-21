# Age

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'power-age'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install power-age

## Usage

### `Age::now(timestamp)`
shortcut for `Age.new(timestamp).now` 

### `Age::new(timestamp)` 
`Age#new` accepts a Time, Date or DateTime object as argument.

### `Age#now`

```ruby
birthday = Time.new(1990, 3, 14)
Age.new(birthday).now
```

### `Age#at(timestamp)`

```ruby
User  = Struct.new(:dob)
Event = Struct.new(:start_date)
event = Event.new(Time.new(2020, 2, 20))
user  = User.new(Time.new(1970, 6, 21))

Age.new(user.dob).at event.start_date
```

### ActiveRecord/ActiveModel

```ruby
class User < ApplicationRecord
  has_person_name
  has_age
end

class Dog < ApplicationRecord
  has_age :pet_birth_date
end

user = User.new(dob: Date.new(2000, 1, 1))
user.age
user.age(at: Time.now + 1.day)
```
