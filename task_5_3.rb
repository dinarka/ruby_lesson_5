=begin
Пользователь вводит поочередно название товара, цену за единицу и кол-во купленного товара (может быть нецелым числом).
Пользователь может ввести произвольное кол-во товаров до тех пор, пока не введет "стоп" в качестве названия товара.
На основе введенных данных требуется:
-Заполнить и вывести на экран хэш, ключами которого являются названия товаров, а значением - вложенный хэш,
содержащий цену за единицу товара и кол-во купленного товара. Также вывести итоговую сумму за каждый товар.
-Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".
=end

cart = []
result_hash = {}
total_per_item = []

loop do
  puts "Введите название товара:"
  item_name = gets.chomp.to_s
  break if item_name == 'стоп'

  puts "Введите цену за единицу:"
  item_price = gets.chomp.to_f

  puts "Введите количество купленного товара:"
  quantity = gets.chomp.to_f

  cart.push ([ item_name, item_price, quantity ])  #вложенный массив выбранных товаров
end

cart.each do |item|
  price_count = {}
  price_count[item[1]] = item[2]
  result_hash[item[0]] = price_count
  total_per_item << item[1] * item[2]
end

puts "#{result_hash} - результирующий хэш"
puts "#{total_per_item} - массив с итоговой суммой за каждый товар"
puts "#{total_per_item.inject(:+)} - итоговая сумма всех покупок в корзине"
