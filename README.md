[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Ruby Class Methods

## Prerequisites

-   [ruby-objects-self](https://github.com/ga-wdi-boston/ruby-objects-self)

## Objectives

By the end of this, students should be able to:

-   Give an example of a class method you already use.
-   Diagram the invocation pattern between `#initialize` and `.new`.
-   Contrast defining class methods with defining instance methods.
-   Contrast invoking class methods with invoking instance methods.

## Preparation

1.  Fork and clone this repository.
 [FAQ](https://github.com/ga-wdi-boston/meta/wiki/ForkAndClone)
1.  Create a new branch, `training`, for your work.
1.  Checkout to the `training` branch.
1.  Install dependencies with `bundle install`.

## Demo: Class Methods

Sometimes a method is associated with a class, not an object.

Observe how a Method on a **Class** differs from a method on an **Instance**
that Class.

<!-- Diagram the difference between #initialize and ::new
 See issue #10
-->

Let's discuss the code below:

```ruby
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
    puts "Meow"
  end
end

zeno = Cat.new('Zeno')
```

We know that there is a class Cat, and the `::new` method is recieved by the Cat class, with 'Zeno' as an argument. It then calls the instance method `#initialize` with 'Zeno' as an argument, which assigns 'Zeno' to an instance variable, `@name`.

Where will the method `cats_count` be recieved?
What about `meow`?

## Demo: Analyze class methods

Let's take a look at the code in `lib/custom_attr.rb`

## Lab: Make a Class Method

-   Make a class method on Album (in `lib/album.rb`) to search the collection of albums by `title`.
-   Use this class method to set YOUR favorite Album by searching for the album
title.
-   Create a instance method on songs to add a `Rating` to Songs.

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
