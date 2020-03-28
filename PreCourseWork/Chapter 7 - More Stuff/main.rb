def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "Block being called #{num}"
end

words = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

proc = Proc.new do |word, contains|
  if contains
    puts "#{word}. Contain's the string lab"
  else
    puts "#{word}. Doesn't contain the string lab"
  end
end

words.each do |word|
  has_lab = word.downcase.include?('lab')
  if has_lab 
    proc.call word, has_lab
  else
    proc.call word, has_lab
  end
end

