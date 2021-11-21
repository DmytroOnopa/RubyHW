puts '1. Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
a = [1, 2, 3, 4, 5, 6, 7]
	b = a.group_by.with_index do |el, i|
		i.odd? ? :odd_index : :even_index
end	
puts "Дан массив #{a}."
puts "Элементы с четными индексами: #{b[:odd_index].join(', ')}."
puts "Элементы с нечетными индексами: #{b[:even_index].join(', ')}."
p '<————————————————————————————————————————>'


puts '2. Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	b = a.group_by.with_index do |el, i|
		i.odd? ? :odd_index : :even_index
end	
puts "Дан массив #{a}."
puts "Элементы с нечетными индексами: #{b[:even_index].join(', ')}."
puts "Элементы с четными индексами: #{b[:odd_index].join(', ')}."
p '<————————————————————————————————————————>'


puts '3. Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
a = [7, 1, 2, 6, 4, 8, 9]
	b = a.index(a.select { |num| a[0] < num && num < a[-1] }.first) || []
puts "Дан массив #{a}."
puts "Номер первого элемента удовлетворяющего двойному неравенству: #{b}." 
p '<————————————————————————————————————————>'


puts '4. Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
a = [7, 1, 2, 6, 4, 8, 9]
	b = a.index(a.select { |num| a[0] < num && num < a[-1] }.last) || []
puts "Дан массив #{a}."
puts "Номер первого элемента удовлетворяющего двойному неравенству: #{b}." 
p '<————————————————————————————————————————>'


puts '5. Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.'
a = [1, 2, 4, 6, 8, 10]
puts "Дан массив #{a}."
	a.index(a.first)+1.upto(a.rindex(a.last)-1) do |i|
		case a[i] %2 == 0
			when true
				a[i]+=a.first
			end
		end				
puts "Переобразованый массив с прибалением первого элемента к четным числам: #{a.join(', ')}."
p '<————————————————————————————————————————>'


puts '6. Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.'
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts "Дан массив #{a}."
	a.index(a.first)+1.upto(a.index(a.last)-1) do |i|
		case a[i] %2 == 0
			when true
				a[i]+=a.last
			end
		end				
puts "Переобразованый массив с прибалением последнего элемента к четным числам: #{a.join(', ')}."
p '<————————————————————————————————————————>'


puts '7. Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять.'
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts "Дан массив #{a}."
	a.index(a.first)+1.upto(a.index(a.last)-1) do |i|
		case a[i] %2 == 0
			when false
				a[i]+=a.last
			end
		end				
puts "Переобразованый массив с прибалением последнего элемента к нечетным числам: #{a.join(', ')}."
p '<————————————————————————————————————————>'


puts '8. Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.'
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts "Дан массив #{a}."
	a.index(a.first)+1.upto(a.index(a.last)-1) do |i|
		case a[i] %2 == 0
			when false
				a[i]+=a.first
			end
		end				
puts "Переобразованый массив с прибалением последнего элемента к нечетным числам: #{a.join(', ')}."
p '<————————————————————————————————————————>'


puts '9. Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'
a = [-2, 9, 1, 3, -5, -7]
puts "Дан массив #{a}."
	min = a.min
		a = a.map { |e| e > 0 ? min : e }
puts "После замены всех положительных элементов минамальным значением: #{a.to_s}."
p '<————————————————————————————————————————>'


puts '10. Дан целочисленный массив. Заменить все положительные элементы на значение максимального.'
a = [-2, 9, 1, 3, -5, -7]
puts "Дан массив #{a}."
	max = a.max
		a = a.map { |e| e > 0 ? max : e }
puts "После замены всех положительных элементов максимальным значением: #{a.to_s}."
p '<————————————————————————————————————————>'


puts '11. Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.'
a = [-2, 9, 1, 3, -5, -7]
puts "Дан массив #{a}."
	min = a.min
		a = a.map { |e| e < 0 ? min : e }
puts "После замены всех отрицательных элементов минамальным значением: #{a.to_s}."
p '<————————————————————————————————————————>'


puts '12. Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.'
a = [-2, 9, 1, 3, -5, -7]
puts "Дан массив #{a}."
	max = a.max
		a = a.map { |e| e < 0 ? max : e }
puts "После замены всех отрицательных элементов максимальным значением: #{a.to_s}."
p '<————————————————————————————————————————>'


puts '13. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.'
a = [2, 4, 6, 8]
puts "Дан массив #{a}."
	b = a.rotate(1)
	puts "Эелменты массива с циклическим сдвигом влево на одну позицию: #{b}."
p '<————————————————————————————————————————>'


puts '14. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.'
a = [2, 4, 6, 8]
puts "Дан массив #{a}."
	b = a.rotate!(-1)
puts "Эелменты массива с циклическим сдвигом влево на одну позицию: #{b}."
p '<————————————————————————————————————————>'


puts '15. Дан целочисленный массив. Проверить, образуют ли элементы арифметическую прогрессию. Если да, то вывести разность прогрессии, если нет - вывести nil.'
 a = [2, 4, 6, 8]
 #a = (1..7).to_a.sort
     b = a.each_cons(2).map { |el| el[1] - el[0] }.uniq
 #   c = b.size > 1 ? nil : b[0]
 puts "Дан массив #{a}."
 #puts "Разность арифметической прогресии: #{c}."
 puts "Разность арифметической прогресии: #{b.size > 1 ? nil : b[0]}."
p '<————————————————————————————————————————>'


puts '16. Дан целочисленный массив. Проверить, образуют ли элементы геометрическую прогрессию. Если да, то вывести знаменатель прогрессии, если нет - вывести nil.'
 #a = [2, 40, 6, 80]
 a = (1..7).to_a.sort
  if a.include?(0)
    else
      b = a.each_cons(2).map { |el| el[1] / el[0] }.uniq
      #b.size > 1 ? nil : b[0]
    end
 puts "Дан массив #{a}."
 puts "Разность геометрической прогресии: #{b.size > 1 ? nil : b[0]}."
p '<————————————————————————————————————————>'


puts '17.'


puts '18.'


puts '19. Дан целочисленный массив. Найти максимальный из его локальных максимумов.'
 a = (1..7).to_a.shuffle
  def max_local(a)
    a.each_cons(3).each_with_object([]) do |three, memo|
      memo << three[1] if three[1] > three.first && three[1] > three.last
    end
  end
 puts "Дан массив #{a}."
 puts "Максимальный из его локальных максимумов: #{max_local(a).max}."
p '<————————————————————————————————————————>'


puts '20. Дан целочисленный массив. Найти минимальный из его локальных минимумов.'
 a = (1..7).to_a.shuffle
  def min_local(a)
    a.each_cons(3).each_with_object([]) do |three, memo|
      memo << three[1] if three[1] < three.first && three[1] < three.last
    end
  end
 puts "Дан массив #{a}."
 puts "Минимальный из его локальных минимумов: #{min_local(a).min}."
p '<————————————————————————————————————————>'


puts '29. Дан целочисленный массив. Упорядочить его по возрастанию.'
 a = (1..7).to_a.shuffle
 puts "Дан массив #{a}."
 puts "Упорядочино по возрастанию: #{a.sort}."
p '<————————————————————————————————————————>'


puts '30. Дан целочисленный массив. Упорядочить его по убыванию.'
 a = (1..7).to_a.shuffle
     sorted_a = a.sort_by { |number| -number }
 puts "Дан массив #{a}."
 puts "Упорядочино по убыванию: #{sorted_a}."
p '<————————————————————————————————————————>'


puts '33. Дан целочисленный массив. Найти индекс минимального элемента.'
 a = (1..7).to_a.shuffle
 puts "Дан массив #{a}."
 puts "Индекс минимального элемента: #{a.index(a.min)}."
p '<————————————————————————————————————————>'


puts '34. Дан целочисленный массив. Найти индекс максимального элемента.'
 a = (1..7).to_a.shuffle
 puts "Дан массив #{a}."
 puts "Индекс максимального элемента: #{a.index(a.max)}."
p '<————————————————————————————————————————>'


puts '41. Дан целочисленный массив. Найти минимальный четный элемент.'
 #a = (1..7).to_a.shuffle
 a = [141, 143, 3, 4, 555, 777]
 puts "Дан массив #{a}."
 puts "Минимальный четный элемент: #{a.select{ |i| i.even? }.min}."
p '<————————————————————————————————————————>'


puts '42. Дан целочисленный массив. Найти минимальный нечетный элемент.'
 #a = (1..7).to_a.shuffle
 a = [141, 143, 3, 4, 555, 777]
 puts "Дан массив #{a}."
 puts "Минимальный нечетный элемент: #{a.select{ |i| i.odd? }.min}."
p '<————————————————————————————————————————>'



puts '43. Дан целочисленный массив. Найти максимальный четный элемент.'
 #a = (1..7).to_a.shuffle
 a = [141, 143, 3, 4, 555, 777, 4000]
 puts "Дан массив #{a}."
 puts "Максимальный четный элемент: #{a.select{ |i| i.even? }.max}."
p '<————————————————————————————————————————>'


puts '44. Дан целочисленный массив. Найти максимальный нечетный элемент.'
 #a = (1..7).to_a.shuffle
 a = [141, 143, 3, 4, 555, 777, 4000]
 puts "Дан массив #{a}."
 puts "Максимальный нечетный элемент: #{a.select{ |i| i.odd? }.max}."
p '<————————————————————————————————————————>'


puts '45. Дан целочисленный массив. Найти минимальный положительный элемент.'
 a = (-7..7).to_a.shuffle
  puts "Дан массив #{a}."
 puts "Минимальный положительный элемент: #{a.select{|i| i>=0}.min}."
p '<————————————————————————————————————————>'


puts '46. Дан целочисленный массив. Найти минимальный отрицательный элемент.'
 a = (-7..7).to_a.shuffle
  puts "Дан массив #{a}."
 puts "Минимальный отрицательный элемент: #{a.select{|i| i<=0}.min}."
p '<————————————————————————————————————————>'
