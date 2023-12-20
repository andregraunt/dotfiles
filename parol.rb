
require 'io/console'
print 'Введите пароль: '
password = STDIN.noecho(&:gets).chomp
puts "\nВы ввели пароль: #{password}"


# again only ***
require 'io/console'
def hide_input
  input = ""
  while (char = STDIN.getch) != "\r" # Ждем, пока пользователь нажмет Enter
    print '*'
    input << char
  end
  return input
end
print 'Введите пароль: '
password = hide_input
puts "\nВы ввели пароль: #{password}"




# 1 only litters
def hide_letters(word)
    hidden_word = " "
    word.each_char do |char|
      if char =~ /[[:alpha:]]/  # Проверяем, является ли символ буквой
        hidden_word += "*"
      else
        hidden_word += char
      end
    end
    return hidden_word
  end
  
  # Пример использования
  puts 'print cod'
  input_word = gets.chomp
  hidden_word = hide_letters(input_word)
  puts hidden_word
# 2 for all simvol
  def hide_characters(string)
    hidden_string = "*" * string.length
    return hidden_string
  end
  
  # Пример использования
  puts 'enter cod'
  input_string = gets.chomp
  hidden_string = hide_characters(input_string)
  puts hidden_string

# simple exemple

  puts 'parol: '
parol = gets.chomp
x = parol.length
x.times do
    print '*'
end
puts

char = "H"
if char =~ /[[:alpha:]]/
  puts "Это буква"
else
  puts "Это не буква"
end
char = "5"
if char =~ /\d/
  puts "Это цифра"
else
  puts "Это не цифра"
end

'''
В этом примере, если символ "5" проверяется с использованием регулярного выражения `\d`, результат будет "Это цифра". Если бы символ был не цифрой, например, символ "$", результатом было бы "Это не цифра".
'''

char = "$"
if char =~ /\D/
  puts "Это другой символ"
    puts char
else
  puts "Это не другой символ"

end

'''
В этом примере, если символ "$" проверяется с использованием регулярного выражения `\D`, результат будет "Это другой символ". Если бы символ был цифрой, например, символ "5", результатом было бы "Это не другой символ".

Обратите внимание, что `^` внутри квадратных скобок `[^0-9]` означает отрицание, то есть любой символ, не являющийся цифрой.
'''
require 'io/console'
print 'Введите пароль: '
password = STDIN.noecho(&:gets).chomp
puts "\nВы ввели пароль: #{password}"

require 'io/console'
def hide_input
  input = ""
  while (char = STDIN.getch) != "\r" # Ждем, пока пользователь нажмет Enter
    print '*'
    input << char
  end
  return input
end
print 'Введите пароль: '
password = hide_input
puts "\nВы ввели пароль: #{password}"

