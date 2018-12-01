=begin
Дан массив строк. Строки представляют из себя какое-то слово.
Написать метод, который принимает этот массив, и вычисляет сумму символов в самом коротком
и самом длинном слове массива и выводит на экран.
=end

puts "Напишите новое предложение"
new_sentence = gets.chomp.to_s
string_array = new_sentence.split(' ').map { |s| s.to_s  }

def symbol_sum(new_array)
  words_length = []
  new_array.each { |word| words_length << word.length }
  puts "Сумма символов: #{words_length.min + words_length.max}"
end

symbol_sum(string_array)
