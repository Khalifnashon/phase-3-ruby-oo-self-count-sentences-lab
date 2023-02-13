# In such instances, just open irb and run the codes.
require 'pry'
# Refactoring out code
class Dog
  attr_accessor :name, :owner

  def initialize(name)
    @name = name
  end

  def bark
    "Woof!"
  end
  
  # Using self to teach our dog instanes how to get adopted
  def get_adopted(owner_name)
    self.owner = owner_name
  end

end

# we use the self keyword inside of the #get_adopted instance method to 
# refer to whichever dog this method is being called on. We set that dog's 
# owner property equal to the new owner's name by calling the #owner= method 
# on self inside the method body.

# Think about it: if self refers to the object on which the method is being called, 
# and if that object is an instance of the Dog class, then we can call any of our 
# other instance methods on self.

# Here's how we'd use the #get_adopted method:

fido = Dog.new("Fido")
fido.get_adopted("Sophie")
fido.owner
# => "Sophie"




















# class Dog
#     def showing_self
#       puts self
#     end
# end

# fido = Dog.new
# fido.showing_self

# The self keyword refers to the instance, or object, that the #showing_self method 
# is being called on.

# So, when we call #showing_self on fido, the method will puts out to the terminal the
# Dog instance that is fido.

# Operating on self in an Instance Method
# class Dog
#   attr_accessor :name, :owner

#   def initialize(name)
#     @name = name
#   end

#   # Writing an adopted method incase fido gets adopted
#   def adopted(dog, owner_name)
#     dog.owner = owner_name
#   end


# end


# Now we can set Fido's owner attribute equal to the string of "Sophie". 
# The name of his new owner:

# fido.owner = "Sophie"

# fido.owner
# => "Sophie"

# Here we have a method that takes in two arguments, an instance of the Dog 
# class and an owner's name. We could call our method like this:

# fido = Dog.new
# adopted(fido, "Sophie")

# now we can ask Fido who his owner is:

# fido.owner
# => "Sophie"
binding.pry
