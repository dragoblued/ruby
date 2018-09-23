require 'csv'
#Число заpегистpиpованных пpеступлений - всего 
def min(yer, kol)
	print "Минимальное кол-во преступлений было в "
	print yer[kol.index(kol.min)]
	print " году со значением "
	puts kol.min
end
def max(yer, kol)
	print "Максимальное кол-во преступлений было в "
	print yer[kol.index(kol.max)]
	print " году со значением "
	puts kol.min
end
def midle(kol)
	print "Среднее кол-во преступлений "
	puts kol.sum.to_f/kol.size
end
def dispersion(kol)
	m = kol.sum.to_f/kol.size
	s = 0
	for i in 0..kol.size
		s+=(kol[i].to_f-m)**2
	end
	print "Исправленная выборочная дисперсия = "
	puts s.to_f/(kol.size - 1)
end
chart = CSV.read('chart.csv')
#count_of_offenses[chart.size]
j = 0
yer = Array.new(chart.size-4)
kol = Array.new(chart.size-4)
for i in 3..chart.size-1
	c =  chart[i].to_s.split('"')
	yer[j] = c[1].to_s.split(";").first.to_i
	b = c[1].to_s.split(";").last
	kol[j] = b.to_s.split(" ").first.to_i*10**3+b.to_s.split(" ").last.to_i
	j+=1
end

print "Что вы хотите узнать?\nНажмите 1 : минимальное кол-во преступлений\nНажмите 2 : максимальное кол-во преступлений\nНажмите 3 : среднее значение\nНажмите 4 : значение исправленной дисперсии\n"
b = gets.chomp
case b
	when "1"	
		min(yer, kol)
	when "2"
		max(yer, kol)
	when "3"
		midle(kol)
	when "4"
		dispersion(kol)
	else 
		puts "Нет такого номера"
end



