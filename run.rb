require 'pry'
require_relative 'lib/cat'
require_relative 'lib/dog'
require_relative 'lib/owner'

darien = Owner.new("Darien")
danny = Owner.new("Danny")

cat1 = Cat.new("Garfield", danny)
cat2 = Cat.new("Fido", darien)
cat3 = Cat.new("Whiskers", danny)

dog1 = Dog.new("Frank", darien)
dog2 = Dog.new("Snuffles", danny)
dog3 = Dog.new("Charley", darien)


