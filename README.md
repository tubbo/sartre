# Sartre

Existential check for all object methods in Ruby. Convert any method
into a boolean value by simply appending '?' to the method name.

## Installation

Add this line to your application's Gemfile:

    gem 'sartre'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sartre

## Usage

Sartre will allow you to test the "existence" of any method on any
object in Ruby...

```ruby
require 'sartre'

class TestClass
  attr_accessor :name

  def initialize
    @name = "my name"
  end
end

test = TestClass.new
test.name? # => true
test.name = nil
test.name? # => false
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
