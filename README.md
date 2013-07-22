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

Given the following class:

```ruby
class TestClass
  attr_accessor :name

  def initialize
    @name = "my name"
  end
end
```

Sartre will allow you to test the existence of the `name` method, and if
it has been set or not. Since we already have it set, `test.name?`
should be equal to true. But the following code...

```ruby
test = TestClass.new
test.name = nil
test.name?
```

...will return `false`, because name has been re-set to nil.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
