# Cat class
class Cat
  @@cats_count = 0

  def initialize(name)
    @name = name
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end

  def meow
    puts "#{@name} meows"
  end
end

# kitty = Cat.new("Mr.Kitty");
