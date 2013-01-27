#Exec No 1
puts "Enter a number between 1 and 100"
n = gets.to_i
until n > 1 && n < 100
	puts "invalid number. pls enter again"
	n = gets.to_i
end
n.times do |x|
	if ( x % 2 ) != 0
		puts x
	end
end
