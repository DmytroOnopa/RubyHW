array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202,
         574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]
line = '______________________________'

puts "Дан массив: #{array}"

puts "Кол-во элементов в массиве: #{array.size}"
  puts line


puts "Перевернутый массив: #{array.reverse}"
  puts line


puts "Найбольшее число в массиве: #{array.max}"
  puts line


puts "Найменьшее число в массиве: #{array.min}"
  puts line


puts "Отсортирован по возрастанию: #{array.sort}"
  puts line


puts "Отсортирован по убыванию: #{array.sort.reverse}"
  puts line


puts "Без нечетных чисел: #{array.map.select(&:even?)}"
  puts line


puts "Те числа, которые без остатка делятся на 3: #{array.map.select { |el| (el % 3).zero? }}"
  puts line


puts "Без повторяющихся чисел: #{array.map.uniq}"
  puts line


puts "Каждый элемент разделен на 10: #{array.map { |el| el.to_f / 10 }}"
  puts line


puts "Три найменьших элеманта: #{array.min(3)}"
  puts line


puts "Элементы, которые находятся перед минимальным числом в массиве: #{array[0...array.index(array.min)]}"
  puts line


tmp_array = [array.index(array.min), array.index(array.max)].sort
puts "Минимальный и максимальный элементы массива поменялись местами: #{tmp_array}"
  puts line


puts 'Новый массив, который бы содержал в себе те буквы английского алфавита,' \
     "порядковый номер которых есть в нашем массиве: #{array.select { |x| x < 26 }.map { |e| (e + 97).chr }}"


puts "Дан массив: #{array}"


puts "Кол-во элементов в массиве: #{array.size}"
  puts line


puts "Перевернутый массив: #{array.reverse}"
  puts line


puts "Найбольшее число в массиве: #{array.max}"
  puts line


puts "Найменьшее число в массиве: #{array.min}"
  puts line


puts "Отсортирован по возрастанию: #{array.sort}"
  puts line


puts "Отсортирован по убыванию: #{array.sort.reverse}"
  puts line


puts "Без нечетных чисел: #{array.map.select(&:even?)}"
  puts line


puts "Те числа, которые без остатка делятся на 3: #{array.map.select { |el| (el % 3).zero? }}"
  puts line


puts "Без повторяющихся чисел: #{array.map.uniq}"
  puts line


puts "Каждый элемент разделен на 10: #{array.map { |el| el.to_f / 10 }}"
  puts line


puts "Три найменьших элеманта: #{array.min(3)}"
  puts line


puts "Элементы, которые находятся перед минимальным числом в массиве: #{array[0...array.index(array.min)]}"
  puts line


  tmp_array = [array.index(array.min),array.index(array.max)].sort
puts "Минимальный и максимальный элементы массива поменялись местами: #{tmp_array}"
  puts line


puts "Новый массив, который бы содержал в себе те буквы английского алфавита," \
      "порядковый номер которых есть в нашем массиве: #{array.select { |x| x < 26 }.map { |e| (e + 97).chr }}"
