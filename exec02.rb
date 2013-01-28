#Exec No 2
i = ARGV.length
until i <= 0
	puts ARGV[i-1]
	i-=1
end
puts ARGV.reverse