def farengate (a)
	print "In what scale will we translate : c, k, f ?"
	b = gets.chomp
 	case b 
 	when "c" 
 		puts (a-32)*(5/9) 
 	when "k"
 		puts (a-32)*(5/9)+273.15
 	when "f"
 		puts a
 	else 
 		puts "Command not found"
 	end
 end 
 def celsius(a)
	print "In what scale will we translate : c, k, f ?"
	b = gets.chomp
 	case b 
 	when "f" 
 		puts (a*9/5)+32 
 	when "k"
 		puts a+273.15
 	when "c"
 		puts a
 	else 
 		puts "Command not found"
 	end
 end 
 def kelvin(a)
	print "In what scale will we translate : c, k, f ?"
	b = gets.chomp
 	case b 
 	when "f" 
 		puts a*9/5-459.67
 	when "k"
 		puts a
 	when "c"
 		puts a - 273.15
 	else 
 		puts "Command not found"
 	end
 end 
 puts "Enter the number we will translate"
 a = gets.to_f
 a.to_f
 print "Enter the name of the scale : c, k, f ?"
	b = gets.chomp
 	case b 
 	when "f" 
 		farengate(a)
 	when "k"
 		kelvin(a)
 	when "c"
 		celsius(a)
 	else 
 		puts "Command not found"
 	end