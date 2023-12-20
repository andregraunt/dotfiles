#loop do
puts"\e[H\e[2J"
numbers = (1..100).to_a
sum = numbers.map {|num| num}.reduce(:+)
puts sum

puts (1..100).sum
s = "privet"
word = "Hello"
letters = []
num = [ ]
x = 10
while x >= 1
  num << x
  x -= 1
  print num
  puts
  
end
puts
puts num.join("-")
index = word.length - 1
puts index
while index >= 0
  letters << word[index]
  index -= 1
end

reversed_word = letters.join

puts reversed_word
print letters
puts
print letters.join(" > ")
#end
