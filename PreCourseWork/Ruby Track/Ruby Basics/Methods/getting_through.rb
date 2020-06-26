def get_hello
  'Hello'
end

def get_world
  'World'
end

def greet
  get_hello + ' ' + get_world
end

puts greet