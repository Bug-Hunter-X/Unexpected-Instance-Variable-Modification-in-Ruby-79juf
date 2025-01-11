```ruby
class MyClass
  attr_reader :value # Use attr_reader for controlled access

  def initialize(value)
    @value = value
  end

end

my_object = MyClass.new(10)
puts my_object.value # Output: 10

# Attempting to directly modify @value will now have no effect
my_object.instance_variable_set(:@value, 20) 
puts my_object.value # Output: 10

# Instead, use methods to modify instance variables for better encapsulation
class MyClass
  attr_accessor :value

  def initialize(value)
    @value = value
  end
end

my_object = MyClass.new(10)
my_object.value = 30
puts my_object.value # Output: 30
```