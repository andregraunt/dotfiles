#loop do
puts"\e[H\e[2J"


puts 'Hello, World!'
sum = 0
100.times{|n| puts sum += n.next}

sum = (1..100).sum  #summa
puts sum

puts (1..100).sum  #summa

#vivesti na ekran prosto numbers
100.times do |i|
  puts i + 1
end

total = 0
100.times do |i|
  total += (i + 1)
end
puts total

sum = 0
(1..100).each { |i| sum += i }
puts sum

numbers = (1..100).to_a
sum = numbers.map {|num| num}.reduce(:+)
puts sum
puts 'vvedi: '
chislo = gets.chomp
puts chislo.class

#end