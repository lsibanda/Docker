# puts 'Hello World!'

class HelloWorld
    def initialize(name)
       @name = name.capitalize
    end
    def welcomeWorld
       puts "Hello #{@name}!"
    end
 end
 
 hello = HelloWorld.new("World")
 hello.welcomeWorld