class Animal

  def self.nature
    puts 'oooo'
  end

  def speak
    puts 'yo'
  end
end

class Cat < Animal

end

animal1 = Animal.new
animal2 = Animal.new

def animal1.mymethod 
  puts 'new method'
end

def animal2.ours 
  puts 'ours'
end

animal1.mymethod
animal2.ours


chat = Cat.new
chat.speak