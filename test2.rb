def make_sandwich(element1, element2)
  base = "A #{element1} and #{element2}"
  puts base 
  yield
  
end 

make_sandwich("chicken", "a sense of malaise") do |x| 
  puts "making some tasty stuff..."
end 

# Produces the same thing as: 

def make_sandwich(element1, element2)
  base = "A #{element1} and #{element2}"
  puts base 
  puts "making some tasty stuff..."
end 

make_sandwich("chicken", "a sense of malaise")

# By adding do |innards| ... end, we instruct Ruby to revisit the method above, find the 'yield' keyword, and then insert the following instructions (puts "making some tasty stuff...") into the method, make_sandwich(element1, element2), and then execute that method with the additional code. 

def make_sandwich(element1, element2)
  yield("A #{element1} and #{element2} sandwich")
end

make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |b| ""A #{element1} and #{element2} sandwich" on wheat" }



def greeting(name)
  puts "Hi, #{name}!"
end 

greeting("Bob")

# In the same way we used string interpolation to replace name with Bob, we use interpolation to replace what comes after yield——— yield(("A #{element1} and #{element2} sandwich")———so, 

